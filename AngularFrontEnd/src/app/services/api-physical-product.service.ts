import { Injectable } from '@angular/core';
import axios from 'axios';

import { environment } from '../../environments/environment'

@Injectable({
  providedIn: 'root'
})
export class ApiPhysicalProductService {

  constructor() { }

  async getAllProducts () {
    return (await axios.get(`${environment.apiUrl}/byName/allProducts`)).data;
  }

  async getProductByName (physicalProductName: string) {
    return (await axios.get(`${environment.apiUrl}/byName/${physicalProductName}`)).data;
  }
}
