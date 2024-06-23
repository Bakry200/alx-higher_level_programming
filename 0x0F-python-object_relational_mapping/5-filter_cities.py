#!/usr/bin/python3
"""
This script takes in the name of a state as an argument and lists all cities
of that state using the database hbtn_0e_4_usa.
"""

import sys
import MySQLdb

def list_cities_by_state(username, password, dbname, state_name):
    """
    Connects to a MySQL database and lists all cities of a given state in
    ascending order by cities.id.

    Args:
        username (str): MySQL username
        password (str): MySQL password
        dbname (str): Database name
        state_name (str): State name to search for cities
    """
    # Connect to MySQL server
    db = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=username,
        passwd=password,
        db=dbname
    )

    # Create a cursor object to execute queries
    cursor = db.cursor()

    # Use a parameterized query to prevent SQL injection
    query = """
    SELECT cities.name
    FROM cities
    JOIN states ON cities.state_id = states.id
    WHERE states.name = %s
    ORDER BY cities.id ASC
    """
    cursor.execute(query, (state_name,))

    # Fetch all the rows from the executed query
    cities = cursor.fetchall()

    # Print the results as a comma-separated list
    print(", ".join(city[0] for city in cities))

    # Close the cursor and database connection
    cursor.close()
    db.close()

if __name__ == "__main__":
    # Retrieve command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    dbname = sys.argv[3]
    state_name = sys.argv[4]

    # List cities by state
