import { Component, OnInit } from '@angular/core';
import { Product } from '../_models/Product';
import { ProductService } from '../_services/product.service';
import { MatTableDataSource } from '@angular/material/table';

@Component({
  selector: 'app-menuprincipal',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  products : Product[];

  constructor(private productService: ProductService) { }

  ngOnInit() {
    this.productService.getHome().subscribe((data: any[])=>{      
      this.products = data;
      console.log(this.products);
    });
  }  
}
