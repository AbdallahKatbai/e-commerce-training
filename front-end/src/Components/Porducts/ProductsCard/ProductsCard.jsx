import React from "react";
import "./ProductsCard.css";
import star from '../../../assets/star.png';

const ProductsCard = ({img, name, txt, rating}) => {
    return(
        <div className="card">
            <p className="title">{name}</p>
            <div className="img">
                <img src={img} alt="" />
            </div>
            <div className="rating">
                <div>
                    <img className="star" src={star} alt="" />
                </div>
                <div className="rating_txt">{rating}</div>
            </div>
            <div className="card_txt">{txt}</div>
        </div>
    )
}

export default ProductsCard;