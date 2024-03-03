import React from 'react';
import { useState, useEffect } from 'react';
import './ProductsContainer.css';
import ProductsCard from '../ProductsCard/ProductsCard';
import Products from '../Products';



const ProductsContainer = () => {
    
    const [CurrentProducts, SetCurrentProducts] = useState([]);
    
    useEffect(() => {
        const GetProducts = () => {
            SetCurrentProducts(Products)
        };
        GetProducts();
    },[]);
    
    return (
        <div className='Cards_Wrapper'>
            {
                CurrentProducts.length > 0 && CurrentProducts.map((Product,index) => {
                    return <ProductsCard key={index} img={Product.img} name={Product.name} rating={Product.rating} txt={Product.description}/>
                })
            }
        </div>
    )
}

export default ProductsContainer;