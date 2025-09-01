import psycopg
import requests
import os

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from dotenv import load_dotenv

def getCursor(query: str):
    """
    Description: To execute a query on the postgres DB by creating a connection
        object
    Parameters:
        - `query` (string): The query to execute onto the DB
    Returns: psycopg.Cursor. Object that has information regarding the 
        execution of the query
    Pre-conditions: A Postgres DB must be running at the given `POSTGRES_DB_URL`
        env variable
    Post-conditions: Queries can make changes into the DB
    Exceptions:
       - psycopg.errors: A family of exceptions regarding DB postgress operations
    """
    with psycopg.connect(os.environ['POSTGRES_DB_URL']) as conn:
        return conn.execute(query)

def getWebDriver():
    """
    Description: To create a selenium web driver that can open a web browser for
        frontend testing
    Returns: WebDriver: The object that will conduct the interaction with the frontend
        of a given url
    """
    options = webdriver.FirefoxOptions()
    options.add_argument('--ignore-ssl-errors=yes')
    options.add_argument('--ignore-certificate-errors')
    return webdriver.Firefox(
        options=options
    )

def find_broken_links(url: str):
    """
    Description: Finds and reports broken links on a given URL using Selenium
        and requests.
    Parameters: 
        - url: The url under test for broken links
    Pre-conditions: `url` must be reachible by the host machine
    Post-conditions: Print in the console the broken links found
    """
    driver = getWebDriver()
    driver.get(url)
    print (f"For URL {url}")

    # Wait 10 secs or until a <h1> tag has been rendered
    WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.TAG_NAME, "h1")))

    links = driver.find_elements(By.TAG_NAME, 'a')
    broken_links = get_broken_links(links)
    
    driver.quit()
    
    if broken_links == []:
        print(f"No malformed frontend or broken github links found\n")
        return
    print(f"Broken links found on {url}:")
    for link, status in broken_links:
        print(f"- {link} (Status: {status})")
    print()

def get_broken_links(links: list[str]):
    """
    Description: Collect all the broken links found from a given list of those
    Parameters:
       - links: All the href urls found on a given frontend url
    Returns: list[str]. The list of urls that are either malformed or return a
        http error code
    """
    base_url = os.environ["FRONTEND_URL"]

    # The list of expected urls currently in the frontend app 
    # (Not including the specific repo sites)
    valid_frontend_urls = list(map(
        lambda path: f"{base_url}/{path}",
        ["repositories", "about", "connect", ""]
    ))
    broken_links = []
    for link in links:
        href = link.get_attribute('href')
        # Skip if the href is an email request, or 
        # if it's an external url not related to our site or our reconstructed 
        # github.com links
        if not href or "mailto:" == href[:7] or (base_url not in href and "github.com" not in href):
            continue
        if base_url in href and href not in valid_frontend_urls:
            broken_links.append((href, f"Error: It is a malformed URL"))
            continue
        try:
            response = requests.get(href, timeout=5)
            if response.status_code >= 400:
                broken_links.append((href, response.status_code))
        except requests.exceptions.RequestException as e:
            broken_links.append((href, f"Error: {e}"))
    return broken_links

def test_all_repo_links():
    """
    Description: Iterate through all the repositories pages to check for broken
       github.com links or for malformed links using the app frontend url
    Pre-conditions:
       - A Postgres DB must be running at the given `POSTGRES_DB_URL`
        env variable
       - Frontend app must be available and reacheable by the host maching at
           at the given `FRONTEND_URL` env variable
    Post-conditions: Print out of either a list of broken/malformed links, or 
        a message indicating the none were found per each repo page.
    """
    query = """
        SELECT id
        FROM  combined_repositories_showcase
    """
    result_cursor = getCursor(query)
    result = result_cursor.fetchall()
    for tuple in result:
        find_broken_links(f"{os.environ['FRONTEND_URL']}/repositories/{tuple[0]}")


load_dotenv()
test_all_repo_links()
