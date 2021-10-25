import { Component } from '@angular/core';
import { ApiUserService } from '../../services/api-user.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss'],
  providers: [ApiUserService]
})
export class RegisterComponent {
  userService: ApiUserService;

  registerUserForm: FormGroup;

  constructor(apiUserService: ApiUserService, private formBuilder: FormBuilder) {
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

  async registerUser() {
    try {
      const registerResponse = await this.userService.setNewUser(
        this.registerUserForm.value.userName,
        this.registerUserForm.value.userEmail,
        this.registerUserForm.value.userPassword
      );
      if (registerResponse) {
        Swal.fire({
          title: `Olá ${this.registerUserForm.value.userName}`,
          text: 'Você foi cadastrado com sucesso!',
          icon: 'success',
          confirmButtonText: 'Continuar'
        }).then((result) => {
          if (result.value) {
            location.href = "/login";
          }
        });
      }

    } catch (error) {
      Swal.fire({
        title: `${this.registerUserForm.value.userEmail}`,
        text: 'Este email já consta em nosso banco de dados',
        icon: 'warning',
        showCancelButton: true,
        cancelButtonText: 'Sair',
        confirmButtonText: 'Tentar novamente'
      }).then((result) => {
        if (result.dismiss) {
          location.href = '/home';
        }
      });
    }
  }

  navigateToHomeModal() {
    Swal.fire({
      title: 'Você deseja sair?',
      text: 'Você será redirecionado para a página inicial',
      icon: 'warning',
      showCancelButton: true,
      cancelButtonText: 'Não',
      confirmButtonText: 'Sim',
      focusCancel: true
    }).then((result) => {
      if (result.value) {
        // sessionStorage.setItem('userSuccessLoginData', '');
        location.href = '/home';
      }
    });
  }

  navigateToRegister() {
    location.href = '/register';
  }
}
