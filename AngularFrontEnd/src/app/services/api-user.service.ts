import { Injectable } from '@angular/core';
import axios from 'axios';

import { environment } from '../../environments/environment'

@Injectable({
  providedIn: 'root'
})
export class ApiUserService {

  constructor() { }

  async setNewUser(name: string, email: string, password: string) {
    return (await axios.post(`${environment.apiUrl}/user/register/`, {name, email, password})).data;
  }
}
