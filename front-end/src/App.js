import React from "react";
import Navbar from "./Components/navbar/NavBar";
import ProductsContainer from "./Components/Porducts/ProductsContainer/ProductsContainer";

const App = () => {
  return (
    <div className="App">
      <Navbar/>
      <ProductsContainer/>      
    </div>
  );
}

export default App;
