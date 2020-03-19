import { Component, OnInit } from '@angular/core';
import { Product } from '../../_models/product';
import { Router, ActivatedRoute } from '@angular/router';
import { ProductService } from '../../_services/product.service';
import { CartService } from '../../_services/cart.service';
import { AuthentificationService } from '../../_services/authentification.service'
import { ViewChild, TemplateRef } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { User } from 'src/app/_models/user';

@Component({
  selector: 'app-menuprincipal',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  isLoggedIn: boolean = false;
  products: Product[];
  user: User;

  constructor(
    private productService: ProductService,
    private router: Router,
    private dialog: MatDialog,
    private cart: CartService,
    private authentificationService: AuthentificationService) {
        
  }

  ngOnInit() {
    this.isLoggedIn = this.authentificationService.isLoggedIn;
    this.productService.getHome().subscribe((data: any[]) => {
      this.products = data;
      //console.log(this.products);
    });
    if(this.authentificationService.isLoggedIn){      
      this.user = this.authentificationService.currentUserValue
    }
    console.log(this.user)
  }

  logOff() {
    this.authentificationService.logout
    this.isLoggedIn = false;
    this.router.navigate(['/home']);
  }

  addToCart(product: Product) {
    this.cart.add(product)
    alert('Produit ajouté!!');
  }

}
