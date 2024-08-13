#!/usr/bin/env python3
"""function that inserts a new document in a collection based on kwargs"""


from pymongo import MongoClient

def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection based on kwargs.

    :param mongo_collection: The pymongo collection object
    :param kwargs: The key-value pairs to be inserted as the document
    :return: The _id of the new document
    """
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
