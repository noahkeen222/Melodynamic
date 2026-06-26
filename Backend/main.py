from fastapi import FastAPI
from app.services import info

api = FastAPI()

# @app.get("/get-song")
# def song_get():
#     return None

# @app.get("/get-album")
# def album_get():
#     return None

@api.get("/get_info")
def info_get():
    return info.get_info()