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

/**
 * Class to storage authentication data
 */
export class AuthStorage {
  private storage: Map<string, string>;

  constructor() {
    this.storage = new Map();
  }

  /**
   * Sets the api_key auth method value.
   *
   * @param value The new value to set for api_key.
   */
  setapi_key(value: string): this {
    this.storage.set('api_key', value);
    return this;
  }

  /**
   * Removes the api_key auth method value.
   */
  removeapi_key(): this {
    this.storage.delete('api_key');
    return this;
  }

  /**
   * Gets the api_key auth method value.
   */
  getapi_key(): null | string {
    return this.storage.get('api_key') || null;
  }

  /**
   * Sets the auth_cookie auth method value.
   *
   * @param value The new value to set for auth_cookie.
   */
  setauth_cookie(value: string): this {
    this.storage.set('auth_cookie', value);
    return this;
  }

  /**
   * Removes the auth_cookie auth method value.
   */
  removeauth_cookie(): this {
    this.storage.delete('auth_cookie');
    return this;
  }

  /**
   * Gets the auth_cookie auth method value.
   */
  getauth_cookie(): null | string {
    return this.storage.get('auth_cookie') || null;
  }

  /**
   * Sets the petstore_auth auth method value.
   *
   * @param value The new value to set for petstore_auth.
   */
  setpetstore_auth(value: string): this {
    this.storage.set('petstore_auth', value);
    return this;
  }

  /**
   * Removes the petstore_auth auth method value.
   */
  removepetstore_auth(): this {
    this.storage.delete('petstore_auth');
    return this;
  }

  /**
   * Gets the petstore_auth auth method value.
   */
  getpetstore_auth(): null | string {
    return this.storage.get('petstore_auth') || null;
  }
}
