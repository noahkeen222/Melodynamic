from .song import *
from .album import *

def get_info():
    target_user = "BobRoast"
    song = get_one_song_from_user(target_user)
    
    if song:
        if song['album']:
            album = get_album_from_song(song)
            if album:
                return {"song": song, "album": album}
            else:
                return None