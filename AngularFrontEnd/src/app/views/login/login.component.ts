import { Component } from '@angular/core';
import { ApiUserService } from '../../services/api-user.service';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss'],
  providers: [ApiUserService]
})
export class LoginComponent {
  userService: ApiUserService;
  registerUserForm: FormGroup;
  isUserLogged: boolean = false;

  constructor(apiUserService: ApiUserService, private formBuilder: FormBuilder) {
    if (sessionStorage.getItem('userSuccessLoginData')) {
      Swal.fire({
        title: `Olá, ${JSON.parse(sessionStorage.getItem('userSuccessLoginData') || 'error!usuario!').userName}`,
        text: 'Você já está logado, deseja alterar para outra conta?',
        icon: 'warning',
        showCancelButton: true,
        cancelButtonText: 'Não',
        confirmButtonText: 'Sim'
      }).then((result) => {
        if (result.value) {

        }
        else {
          this.navigateToHome();
        }
      });
    }

    this.userService = apiUserService;

    this.registerUserForm = this.formBuilder.group({
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

  async loginUser() {
    try {
      const loginResponse = await this.userService.doUserLogin(
        this.registerUserForm.value.userEmail,
        this.registerUserForm.value.userPassword
      );

      if (loginResponse) {
        sessionStorage.setItem('userSuccessLoginData', JSON.stringify({
              userName: loginResponse,
              userEmail: this.registerUserForm.value.userEmail
            }));

        this.isUserLogged = true;

        Swal.fire({
          title: `Olá, ${JSON.parse(sessionStorage.getItem('userSuccessLoginData') || 'error!usuario!').userName}`,
          text: 'Seja bem-vindo',
          icon: 'success',
          confirmButtonText: 'Continuar'
        }).then((result) => {
          if (result.value) {
            this.navigateToHome();
          }
        });
      }
    } catch (error) {
      this.isUserLogged = false;

      Swal.fire({
        title: 'Falha',
        text: 'Alguma informação que você digitou está errada, tente novamente',
        icon: 'error',
        showCancelButton: true,
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Tentar novamente',
      }).then((result) => {
        if (result.dismiss) {
          this.navigateToHome();
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
        this.navigateToHome();
      }
    });
  }

  navigateToHome() {
    location.href = "/home";
  }
}
