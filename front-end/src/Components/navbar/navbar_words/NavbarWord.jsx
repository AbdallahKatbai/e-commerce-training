import React from "react";
import "./NavBar_Word.css";

const NavbarWord = ({txt}) => {
    return(
        <div className="navbar_word">
            <p className="txt">{txt}</p>
        </div>       
    )
}

export default NavbarWord;