import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/_services/product.service';
import { Product } from 'src/app/_models/product';
import { Router, ActivatedRoute } from '@angular/router';
import { AuthentificationService } from 'src/app/_services/authentification.service';
import { CartService } from 'src/app/_services/cart.service';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent implements OnInit {

  products : Product[];
  isLoggedIn: boolean = false;

  constructor(
    private productService: ProductService,     
    private router: Router,
    private cart: CartService,
    private authentificationService: AuthentificationService) { }

  ngOnInit() {
    this.isLoggedIn = this.authentificationService.isLoggedIn;
    this.productService.getAll().subscribe((data: any[])=>{      
      this.products = data;
      //console.log(this.products);
    });
  } 

  logOff(){
    this.authentificationService.logout
    this.isLoggedIn = false;
    this.router.navigate(['/home']);
  }

  addToCart(product: Product){
    this.cart.add(product)
    alert('Produit ajouté!!');
  }

}
