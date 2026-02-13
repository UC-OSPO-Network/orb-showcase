
from sqlmodel import create_engine, Session, SQLModel
from sqlalchemy.engine import make_url
import requests
import asyncio
import os

# from keys import Keys
STATIC_URL=os.getenv('POSTGRES_DB_URL')

PGFARM_URL=os.getenv('PGFARM_URL', 'pgfarm.library.ucdavis.edu')
PGFARM_PORT=os.getenv('PGFARM_PORT', '5432')
PGFARM_DATABASE=os.getenv('PGFARM_DATABASE')
PGFARM_PASSWORD=os.getenv('PGFARM_PASSWORD')
PGFARM_USERNAME=os.getenv('PGFARM_USERNAME')

# load every 4 days
PGFARM_ROTATE_DAYS=4
PGFARM_TOKEN=None
PGFARM_TIMER=None
engine=None

def clear_token():
    """Clear the cached token to force a refresh on next request"""
    global PGFARM_TOKEN
    PGFARM_TOKEN = None

    get_token()

async def rotate_key():
    """Start a timer to clear token after PGFARM_ROTATE_DAYS"""

    if STATIC_URL is not None:
        return

    while True:
        await asyncio.sleep(PGFARM_ROTATE_DAYS * 24 * 60 * 60)  # Convert days to seconds
        clear_token()
   
def _on_password_rotated():
    global engine
    old = engine
    engine = _build_engine()
    old.dispose()

def get_token():
    global PGFARM_TOKEN
    if PGFARM_TOKEN is not None:
        return PGFARM_TOKEN

    url = f"https://{PGFARM_URL}/auth/service-account/login"
    # make a post request with json body
    resp = requests.post(url, json={
        "username": PGFARM_USERNAME,
        "secret": PGFARM_PASSWORD
    })

    resp.raise_for_status()
    data = resp.json()
    PGFARM_TOKEN = data['access_token']
    
    # Start timer to clear token after rotation days
    if engine is not None:
        _on_password_rotated()
    
    return PGFARM_TOKEN


def _build_engine():
    if STATIC_URL is not None:
        return create_engine(STATIC_URL, pool_pre_ping=True, future=True)

    url = make_url(f'postgresql://{PGFARM_URL}:{PGFARM_PORT}/{PGFARM_DATABASE}?sslmode=require')
    url = url.set(password=get_token(), username='postgres')
    return create_engine(url, pool_pre_ping=True, future=True)

engine = _build_engine()

def get_session():
    with Session(autocommit=False, autoflush=False,bind=engine) as session:
        yield session
