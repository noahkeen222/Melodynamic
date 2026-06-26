import pylast
from .config import network
from . import utils

def get_album_from_song(target_song) -> dict:
    try:
        album_name = utils.album_name_handler(target_song['album'])
        artist_name = target_song['artist']

        
        album = network.get_album(artist=artist_name, title=album_name)
        
        album_info = {
            'name': album_name,
            'artist': str(album.artist),
            'playcount': album.get_playcount(),
            'listeners': album.get_listener_count(),
            'coverimage': album.get_cover_image(),
            'wiki': album.get_wiki_content() if album.get_wiki_summary() else None,
            'tracks': [],
            'tags': [],
        }
        
        tracks = album.get_tracks()
        for track in tracks:
            track_info = {
                'name': track.get_name(),
                'artist': track.get_artist().get_name(),
                'duration': utils.ms_convert(track.get_duration()),
                'url': track.get_url(),
            }
            album_info['tracks'].append(track_info)

        try:
            tags = album.get_top_tags()
            for tag in tags:
                tag_info = {
                    'name': str(tag.item.name)
                }
                album_info['tags'].append(tag_info)
        except Exception as e:
            print(f"Error getting tags: {e}")
        
        return album_info
            
    except pylast.WSError as e:
        print(f"Last.fm API error: {e}")
        return None
    except Exception as e:
        print(f"Error: {e}")
        return None
