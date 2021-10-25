import { Component, OnInit } from '@angular/core';
import { ApiAdminService } from '../../services/api-admin.service';
import { ApiUserService } from '../../services/api-user.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
  providers: [ApiAdminService, ApiUserService]
})
export class RegisterComponent {
  adminService: ApiAdminService;
  userService: ApiUserService;

  registerUserForm: FormGroup;

  constructor(apiAdminService: ApiAdminService, apiUserService: ApiUserService, private formBuilder: FormBuilder) {
    this.adminService = apiAdminService;
    this.userService = apiUserService;

    this.registerUserForm = this.formBuilder.group({
      userName: ['', Validators.compose([
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(75)
      ])],
      userEmail: ['', Validators.compose([
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(75),
        Validators.email
      ])],
      userPassword: ['', Validators.compose([
        Validators.required,
        Validators.minLength(5),
        Validators.maxLength(50)
      ])]
    });
  }

  registerUser() {
    this.userService.setNewUser(
        this.registerUserForm.value.userName,
        this.registerUserForm.value.userEmail,
        this.registerUserForm.value.userPassword
      );
  }

  navigateToHome() {
    location.href = "/home";
  }
}
