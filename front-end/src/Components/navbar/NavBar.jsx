import React from "react";
import NavBar_Word from "./navbar_words/NavBar_Word";
import "./NavBar.css";
import NavBar_Logo from "./navbar_logo/NavBar_Logo";

const NavBar = () => {
    return(
        <div className="navbar">

            <div className="left_section">
                <NavBar_Logo url=""/>
            </div>

            <div className="right_section">
                <NavBar_Word txt='Home' />
                <NavBar_Word txt='abc' />
                <NavBar_Word txt='cba'/>
            </div>

        </div>
    )
}

export default NavBar;