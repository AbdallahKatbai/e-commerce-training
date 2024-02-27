import React from "react";
import "./NavBar_Word.css";

const NavBar_Word = (txt) => {
    return(
        <div className="navbar_word">
            <p className="txt">{txt}</p>
        </div>       
    )
}

export default NavBar_Word;