import {Component, OnInit, ViewChild} from '@angular/core';
import {FormGroupDirective} from '@angular/forms';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {


  @ViewChild(FormGroupDirective, {static: true}) formGroupDirective: FormGroupDirective;

  ngOnInit() {

  }

  onSubmit() {

  }
}
