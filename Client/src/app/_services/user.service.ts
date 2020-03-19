import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { APIBASEURL } from './back-api'
import { User } from '../_models/user';

@Injectable({ providedIn: 'root' })
export class UserService {
    constructor(private http: HttpClient) { }

    register(user: User) {
        return this.http.post(`${APIBASEURL}/register`, user);
    }

}