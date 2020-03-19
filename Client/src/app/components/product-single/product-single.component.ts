import { Component, OnInit, OnDestroy } from '@angular/core';
import { ProductService } from 'src/app/_services/product.service';
import { Product } from 'src/app/_models/product';
import { Router, ActivatedRoute } from '@angular/router';
import { Subscription } from 'rxjs';
import { AuthentificationService } from 'src/app/_services/authentification.service';

@Component({
  selector: 'app-product-single',
  templateUrl: './product-single.component.html',
  styleUrls: ['./product-single.component.css']
})
export class ProductSingleComponent implements OnInit, OnDestroy {
  
  products : Product[];
  private productId : number;
  private routeSub: Subscription;
  isLoggedIn: boolean = false;

  constructor(
    private productService: ProductService,     
    private router: Router,
    private route: ActivatedRoute, 
    private authentificationService: AuthentificationService) { }

  ngOnInit() {
    this.isLoggedIn = this.authentificationService.isLoggedIn;

    this.routeSub = this.route.params.subscribe(params => {
      console.log(params) //log the entire params object
      this.productId = params['id'];
      console.log(params['id']) //log the value of id
    });

    this.productService.getDetails(this.productId).subscribe((data: any[])=>{      
      this.products = data;
      console.log(this.products);
    });
  }

  ngOnDestroy() {
    this.routeSub.unsubscribe();
  }

  logOff(){
    this.authentificationService.logout
    this.isLoggedIn = false;
    this.router.navigate(['/home']);
  }


}
