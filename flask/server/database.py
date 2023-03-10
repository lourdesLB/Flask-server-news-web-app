import pymongo


class DataBase:
    collection: pymongo.collection.Collection

    def __init__(self):
        myclient = pymongo.MongoClient("localhost",27017)
        db = myclient["noticias"]
        self.collection = db["noticias"]

    def get_collection(self):
        return self.collection

