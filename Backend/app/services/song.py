from .config import network
import pylast

def get_one_song_from_user(target_username) -> dict:
    try:
        user = network.get_user(target_username)
        
        recent_tracks = user.get_recent_tracks(limit=1)
        
        if recent_tracks:
            track = recent_tracks[0]
            song_info = {
                'artist': str(track.track.artist),
                'title': str(track.track.title),
                'album': str(track.track.get_album()) if track.track.get_album() else None,
                'playback_date': track.playback_date,
                'timestamp': track.timestamp
            }
            return song_info
        else:
            print(f"No recent tracks found for user: {target_username}")
            return None
            
    except pylast.WSError as e:
        print(f"Last.fm API error: {e}")
        return None
    except Exception as e:
        print(f"Error: {e}")
        return None
    

