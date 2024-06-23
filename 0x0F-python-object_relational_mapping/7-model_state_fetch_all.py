#!/usr/bin/python3
"""
This module contains the class definition of a State and an instance
Base = declarative_base(). The State class links to the MySQL table states.
"""

from sqlalchemy import Column, Integer, String, create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

Base = declarative_base()

class State(Base):
    """
    State class that inherits from Base and links to the MySQL table 'states'.
    Attributes:
        id (int): Auto-generated, unique integer, primary key, cannot be null.
        name (str): String with maximum 128 characters, cannot be null.
    """
    __tablename__ = 'states'

    id = Column(Integer, primary_key=True, autoincrement=True, nullable=False)
