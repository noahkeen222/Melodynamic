def ms_convert(ms, output_unit: str = "minutes"):
    if output_unit.lower() == "minutes":
        seconds = ms / 1000
        minutes, seconds = divmod(seconds, 60)
                
        return f"{minutes:01.0f}:{seconds:02.0f}"
    
    if output_unit.lower() == "seconds":
        return ms // 1000
    
    
def album_name_handler(album_name):
    if " - " in album_name:
        return album_name.split(" - ")[1]
    return