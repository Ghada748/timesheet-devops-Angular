import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {environment} from "../../../environments/environment";

@Injectable({
  providedIn: 'root'
})
export class ReglementService {
  readonly API_URL = environment.api_url + 'reglement';

  constructor(private httpClient: HttpClient) {
  }


  addReglement(reglement: any) {
    return this.httpClient.post(`${this.API_URL}/add-reglement`, reglement)
  }

  getAllReglements() {
    return this.httpClient.get(`${this.API_URL}/retrieve-all-reglements`)
  }


}
