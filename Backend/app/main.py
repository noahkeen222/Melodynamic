from fastapi import FastAPI
from .services import *

app = FastAPI()

# @app.get("/get-song")
# def song_get():
#     return None

# @app.get("/get-album")
# def album_get():
#     return None

@app.get("/get_info")
def info_get():
    return info.get_info()