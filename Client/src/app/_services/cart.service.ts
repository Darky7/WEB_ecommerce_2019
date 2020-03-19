import { Injectable } from '@angular/core';
import { Product } from '../_models/product'

@Injectable({ providedIn: 'root' })
export class CartService {
    
    public listProducts: Array<Product> = [];

    constructor() { }

    public add(product: Product){
        this.listProducts.push(product)                
    }    
    
    public getListProducts(){
        return this.listProducts;
    }
}
