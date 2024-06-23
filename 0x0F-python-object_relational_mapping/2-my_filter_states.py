#!/usr/bin/python3
"""
This script takes in an argument and displays all values in the states table of
hbtn_0e_0_usa where name matches the argument.
"""

import sys
import MySQLdb

def filter_states(username, password, dbname, state_name):
    """
    Connects to a MySQL database and lists all states where the name matches
    the given argument in ascending order by states.id.

    Args:
        username (str): MySQL username
        password (str): MySQL password
        dbname (str): Database name
        state_name (str): Name of the state to search for
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

    # Execute the query to retrieve states where the name matches the argument
    query = "SELECT id, name FROM states WHERE name = %s ORDER BY id ASC"
    cursor.execute(query, (state_name,))

    # Fetch all the rows from the executed query
    states = cursor.fetchall()

    # Print the results
    for state in states:
        print(state)

    # Close the cursor and database connection
    cursor.close()
    db.close()

if __name__ == "__main__":
    # Retrieve command-line arguments
    username = sys.argv[1]
    password = sys.argv[2]
    dbname = sys.argv[3]
    state_name = sys.argv[4]

    # Filter and list states
