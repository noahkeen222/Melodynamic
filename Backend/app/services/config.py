import pylast
import os
from dotenv import load_dotenv

load_dotenv()

API_KEY = os.environ.get("APIKEY")
API_SECRET = os.environ.get("SHARED_SECRET")

# username = os.environ.get('USERNAME')
# password_hash = pylast.md5(os.environ.get('USERPASSWORD'))

# Create the network connection (without authentication for read-only access)
network = pylast.LastFMNetwork(
    api_key=API_KEY,
    api_secret=API_SECRET,
)