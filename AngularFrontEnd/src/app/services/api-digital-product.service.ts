import { Injectable } from '@angular/core';
import axios from 'axios';

import { environment } from '../../environments/environment'

@Injectable({
  providedIn: 'root'
})
export class ApiDigitalProductService {

  constructor() { }

  async getAllProducts () {
    return (await axios.get(`${environment.apiUrl}/digitalProduct/byName/allProducts`)).data;
  }

  async getProductByName (digitalProductName: string) {
    return (await axios.get(`${environment.apiUrl}/digitalProduct/byName/${digitalProductName}`)).data;
  }
}
