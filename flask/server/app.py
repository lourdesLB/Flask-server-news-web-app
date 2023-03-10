from flask import Flask, render_template, request, redirect, url_for
from database import DataBase
from utils import *
import pymongo

app = Flask(__name__)

def get_bd():
    return DataBase()

@app.route('/')
def hello():
    return render_template('index.html')

@app.route('/noticias')
def noticias():
    db = DataBase().get_collection();
    return render_template('noticias.html', tabla=db.find())
    
if __name__ == "__main__":
    app.run(debug = True)  
