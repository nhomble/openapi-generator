/**
 * 
 * OpenAPI Petstore
 * 
 * 
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 * 
 * Version: 1.0.0
 * 
 * Generated by OpenAPI Generator: https://openapi-generator.tech
 */

// package petstore

// pet_api

export default {
    Query: {

        // @return Pet
        FindPetsByStatus: ($status) => {
            return {
                "status": ""
            };
        },

        // @return Pet
        FindPetsByTags: ($tags) => {
            return {
                "tags": ""
            };
        },

        // @return Pet
        GetPetById: ($petId) => {
            return {
                "petId": "789"
            };
        },

    },

    Mutation: {

        // @return Pet
        AddPet: ($pet) => {
            return {
                "pet": ""
            };
        },

        // @return 
        DeletePet: ($petId, $apiKey) => {
            return {
                "petId": "789",
                "apiKey": "apiKey_example"
            };
        },

        // @return Pet
        UpdatePet: ($pet) => {
            return {
                "pet": ""
            };
        },

        // @return 
        UpdatePetWithForm: ($petId, $name, $status) => {
            return {
                "petId": "789",
                "name": "name_example",
                "status": "status_example"
            };
        },

        // @return ApiResponse
        UploadFile: ($petId, $additionalMetadata, $file) => {
            return {
                "petId": "789",
                "additionalMetadata": "additionalMetadata_example",
                "file": "BINARY_DATA_HERE"
            };
        },

    }
}