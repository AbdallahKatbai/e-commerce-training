import React from "react";
import NavbarWord from "./navbar_words/NavbarWord";
import "./NavBar.css";
import logo from "../../assets/logo.png";
import NavbarLogo from "./navbar_logo/NavbarLogo";

const Navbar = () => {
    return(
        <div className="navbar">

            <div className="left_section">
                <NavbarLogo url={logo}/>
            </div>

            <div className="right_section">
                <NavbarWord txt='Home' />
                <NavbarWord txt='abc' />
                <NavbarWord txt='cba'/>
            </div>

        </div>
    )
}

export default Navbar;