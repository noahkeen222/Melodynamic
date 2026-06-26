import { useState, useEffect } from 'react';
import axios from 'axios';

export default function HomePage() {
    const [info, setInfo] = useState(null);

    useEffect(()=> {
        axios.get('/get_info').then(res => setInfo(res.data));
    }, []);

    if (!info) return <p>Loading...</p>

    const { song, album } = info;

    return( 
        <div>
           <h1>Last Played: {song.title}</h1>
           <img src={album.coverimage} alt="CoverImage" />
           {console.log(album.coverimage)}
        </div>
    );
}