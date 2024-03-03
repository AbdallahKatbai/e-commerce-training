import React from "react";
import "./NavBar_Logo.css"

const NavbarLogo = ({url}) => {
    return (
        <div className="logo">
            <img src={url} alt="" />
        </div>
    )
}

export default NavbarLogo;