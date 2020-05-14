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
import { Headers }                                           from '@angular/http';

import { Observable }                                        from 'rxjs/Observable';

import { ApiResponse } from '../model/models';
import { Pet } from '../model/models';


import { Configuration }                                     from '../configuration';



export interface PetServiceInterface {
    defaultHeaders: Headers;
    configuration: Configuration;
    [others: string]: any;

    /**
     * Add a new pet to the store
     * 
     * @param pet Pet object that needs to be added to the store
     */
    addPet(pet: Pet, extraHttpRequestParams?: any): Observable<Pet>;

    /**
     * Deletes a pet
     * 
     * @param petId Pet id to delete
     * @param apiKey 
     */
    deletePet(petId: number, apiKey?: string, extraHttpRequestParams?: any): Observable<{}>;

    /**
     * Finds Pets by status
     * Multiple status values can be provided with comma separated strings
     * @param status Status values that need to be considered for filter
     */
    findPetsByStatus(status: Array<'available' | 'pending' | 'sold'>, extraHttpRequestParams?: any): Observable<Array<Pet>>;

    /**
     * Finds Pets by tags
     * Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
     * @param tags Tags to filter by
     */
    findPetsByTags(tags: Array<string>, extraHttpRequestParams?: any): Observable<Array<Pet>>;

    /**
     * Find pet by ID
     * Returns a single pet
     * @param petId ID of pet to return
     */
    getPetById(petId: number, extraHttpRequestParams?: any): Observable<Pet>;

    /**
     * Update an existing pet
     * 
     * @param pet Pet object that needs to be added to the store
     */
    updatePet(pet: Pet, extraHttpRequestParams?: any): Observable<Pet>;

    /**
     * Updates a pet in the store with form data
     * 
     * @param petId ID of pet that needs to be updated
     * @param name Updated name of the pet
     * @param status Updated status of the pet
     */
    updatePetWithForm(petId: number, name?: string, status?: string, extraHttpRequestParams?: any): Observable<{}>;

    /**
     * uploads an image
     * 
     * @param petId ID of pet to update
     * @param additionalMetadata Additional data to pass to server
     * @param file file to upload
     */
    uploadFile(petId: number, additionalMetadata?: string, file?: Blob, extraHttpRequestParams?: any): Observable<ApiResponse>;

}
