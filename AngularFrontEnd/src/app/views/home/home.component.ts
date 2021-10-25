import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {
  flagLoginModal: boolean = false;

  constructor(private router: Router) {
    if (!sessionStorage.getItem('userLoginPrompt')) {
      sessionStorage.setItem('userLoginPrompt', this.flagLoginModal.toString());
    }
  }

  userAcceptedLoginModal() {
    this.flagLoginModal = true;

    sessionStorage.setItem('userLoginPrompt', this.flagLoginModal.toString());
    this.router.navigateByUrl('/login');
  }

  userDeniedLoginModal() {
    this.flagLoginModal = false;

    sessionStorage.setItem('userLoginPrompt', this.flagLoginModal.toString());
  }

}
