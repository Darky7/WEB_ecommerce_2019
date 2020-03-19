import { Component, OnInit } from '@angular/core';
import { CartService } from 'src/app/_services/cart.service';
import { Product } from 'src/app/_models/product';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  products: Product[];
  cartPrice = 0;

  constructor(
    private cart: CartService, ) { }

  ngOnInit() {
    this.products = this.cart.getListProducts();
    this.products.forEach(element =>
      this.cartPrice += parseInt(element.prix, 10));    
  }

}
