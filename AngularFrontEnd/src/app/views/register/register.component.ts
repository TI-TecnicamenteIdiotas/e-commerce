import { Component, OnInit } from '@angular/core';
import { ApiAdminService } from '../../services/api-admin.service';
import { ApiUserService } from '../../services/api-user.service';
import { FormGroup, FormControl, FormControlName } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
  providers: [ApiAdminService, ApiUserService]
})
export class RegisterComponent {
  adminService: ApiAdminService;
  userService: ApiUserService;

  registerUserForm = new FormGroup({
    userName: new FormControl(''),
    userEmail: new FormControl(''),
    userPassword: new FormControl('')
  });

  constructor(apiAdminService: ApiAdminService, apiUserService: ApiUserService) {
    this.adminService = apiAdminService;
    this.userService = apiUserService;
  }

  registerUser() {
    this.userService.setNewUser(
      this.registerUserForm.value.userName,
      this.registerUserForm.value.userEmail,
      this.registerUserForm.value.userPassword
      );
  }
}
