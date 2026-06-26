from ..services import album, info, song


def test_get_song():
    target_username = "BobRoast"
    out_song = song.get_one_song_from_user(target_username)
    assert out_song is not None
    
def test_get_album():
    target_username = "BobRoast"
    out_song = song.get_one_song_from_user(target_username)
    assert out_song is not None
    
    out_album = album.get_album_from_song(song)
    assert out_album is not None
    
def test_app():
    target_username = "BobRoast"
    out_song = song.get_one_song_from_user(target_username)
    assert out_song is not None
    
    out_album = album.get_album_from_song(song)
    assert out_album is not None
    
    out_info = info.get_info()
    assert out_info['song'] is not None
    assert out_info['album'] is not None