import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Product } from '../_models/product';
import { APIBASEURL } from './back-api'

@Injectable({
    providedIn: 'root'
})
export class ProductService {
    constructor(private httpClient: HttpClient) { }

    public create(product: Product){
        return this.httpClient.post(`${APIBASEURL}/create`, product);
    }

    public getAll(){
        return this.httpClient.get(`${APIBASEURL}/product`);
    }

    public getHome(){
        return this.httpClient.get(`${APIBASEURL}/product/home`);
    }

    public getDetails(id: number) {
        return this.httpClient.get(`${APIBASEURL}/product/resume/` + id);
    }

    public delete(id: string) {
        return this.httpClient.delete(`${APIBASEURL}/` + id);
    }

}
