import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.scss']
})
export class MainComponent {
  sessionStorageUserSuccessLoginData = JSON.parse(sessionStorage.getItem('userSuccessLoginData') || '{}');

  constructor() {
    console.log(this.sessionStorageUserSuccessLoginData);
  }

}
