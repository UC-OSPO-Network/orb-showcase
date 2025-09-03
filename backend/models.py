from pydantic import BaseModel
from sqlmodel import SQLModel, Field, Column, ARRAY, String, JSON, Text
from typing import List

class Repository(SQLModel, table=True):
    __tablename__ = "showcase_view"
    full_name: str = Field(primary_key=True)
    description: str | None
    short_description: str | None
    university: str | None
    license: str | None
    owner: str | None
    organization: str | None
    language: str | None
    stargazers_count: str | None
    html_url: str | None
    forks_count: str | None
    subscribers_count: str | None
    created_at: str | None
    readme: str | None
    homepage: str | None
    default_branch: str | None
    approved: bool | None
    topic_area_ai: str | None
    # Added missing fields
    contact_name: str | None
    contact_email: str | None
    contact_name2: str | None
    contact_email2: str | None
    contact_name3: str | None
    contact_email3: str | None
    funder1: str | None
    grant_number1_1: str | None
    grant_number1_2: str | None
    grant_number1_3: str | None
    funder2: str | None
    grant_number2_1: str | None
    grant_number2_2: str | None
    grant_number2_3: str | None


class RepositoryResponse(BaseModel):
    full_name: str
    description: str | None
    university: str | None
    license: str | None
    owner: str | None
    organization: str | None 
    language: str | None
    stargazers_count: str | None
    html_url: str | None
    forks_count: str | None
    subscribers_count: str | None
    created_at: str | None
    readme: str | None
    homepage: str | None
    default_branch: str | None
    topic_area_ai: str | None
    # Added missing fields
    contact_name: str | None
    contact_email: str | None
    contact_name2: str | None
    contact_email2: str | None
    contact_name3: str | None
    contact_email3: str | None
    funder1: str | None
    grant_number1_1: str | None
    grant_number1_2: str | None
    grant_number1_3: str | None
    funder2: str | None
    grant_number2_1: str | None
    grant_number2_2: str | None
    grant_number2_3: str | None