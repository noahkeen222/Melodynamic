from ..services import album, song

def test_get_album():
    target_username = "BobRoast"
    out_song = song.get_one_song_from_user(target_username)
    assert out_song is not None
    
    out_album = album.get_album_from_song(song)
    assert out_album is not None
    assert len(out_album['images']) > 0
    assert out_album['images'][0]['href'] is not None