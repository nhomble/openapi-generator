/**
 * OpenAPI Petstore
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { autoinject } from 'aurelia-framework';
import { HttpClient } from 'aurelia-http-client';
import { Api } from './Api';
import { AuthStorage } from './AuthStorage';
import {
  Order,
} from './models';

/**
 * deleteOrder - parameters interface
 */
export interface IDeleteOrderParams {
  orderId: string;
}

/**
 * getInventory - parameters interface
 */
export interface IGetInventoryParams {
}

/**
 * getOrderById - parameters interface
 */
export interface IGetOrderByIdParams {
  orderId: number;
}

/**
 * placeOrder - parameters interface
 */
export interface IPlaceOrderParams {
  order: Order;
}

/**
 * StoreApi - API class
 */
@autoinject()
export class StoreApi extends Api {

  /**
   * Creates a new StoreApi class.
   *
   * @param httpClient The Aurelia HTTP client to be injected.
   * @param authStorage A storage for authentication data.
   */
  constructor(httpClient: HttpClient, authStorage: AuthStorage) {
    super(httpClient, authStorage);
  }

  /**
   * Delete purchase order by ID
   * For valid response try integer IDs with value &lt; 1000. Anything above 1000 or nonintegers will generate API errors
   * @param params.orderId ID of the order that needs to be deleted
   */
  async deleteOrder(params: IDeleteOrderParams): Promise<any> {
    // Verify required parameters are set
    this.ensureParamIsSet('deleteOrder', params, 'orderId');

    // Create URL to call
    const url = `${this.basePath}/store/order/{orderId}`
      .replace(`{${'orderId'}}`, encodeURIComponent(`${params['orderId']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asDelete()

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Returns pet inventories by status
   * Returns a map of status codes to quantities
   */
  async getInventory(): Promise<{ [key: string]: number; }> {
    // Verify required parameters are set

    // Create URL to call
    const url = `${this.basePath}/store/inventory`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()

      // Authentication 'api_key' required
      .withHeader('api_key', this.authStorage.getapi_key())
      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Find purchase order by ID
   * For valid response try integer IDs with value &lt;&#x3D; 5 or &gt; 10. Other values will generated exceptions
   * @param params.orderId ID of pet that needs to be fetched
   */
  async getOrderById(params: IGetOrderByIdParams): Promise<Order> {
    // Verify required parameters are set
    this.ensureParamIsSet('getOrderById', params, 'orderId');

    // Create URL to call
    const url = `${this.basePath}/store/order/{orderId}`
      .replace(`{${'orderId'}}`, encodeURIComponent(`${params['orderId']}`));

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asGet()

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

  /**
   * Place an order for a pet
   * @param params.order order placed for purchasing the pet
   */
  async placeOrder(params: IPlaceOrderParams): Promise<Order> {
    // Verify required parameters are set
    this.ensureParamIsSet('placeOrder', params, 'order');

    // Create URL to call
    const url = `${this.basePath}/store/order`;

    const response = await this.httpClient.createRequest(url)
      // Set HTTP method
      .asPost()
      // Encode body parameter
      .withHeader('content-type', 'application/json')
      .withContent(JSON.stringify(params['order'] || {}))

      // Send the request
      .send();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw new Error(response.content);
    }

    // Extract the content
    return response.content;
  }

}

