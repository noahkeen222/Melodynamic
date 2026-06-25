from get_song import *
from get_album import *

if __name__ == "__main__":
    target_user = "BobRoast"
    song = get_one_song_from_user(target_user)
    
    if song:
        print("Song Info:")
        print(song)
        
        if song['album']:
            album = get_album_from_song(song)
            if album:
                print("\nAlbum Info:")
                print(album)
        else:
            print("\nNo album information available for this track")