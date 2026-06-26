import { Link } from "react-router-dom";

export default function Navbar() {
    return(
        <nav>
          <Link to="/" reloadDocument>refresh</Link>
        </nav>
    );
}