#import <Foundation/Foundation.h>
#import "OAIPet.h"
#import "OAIApi.h"

/**
* OpenAPI Petstore
* This is a sample server Petstore server. For this sample, you can use the api key \"special-key\" to test the authorization filters
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIPetApi: NSObject <OAIApi>

extern NSString* kOAIPetApiErrorDomain;
extern NSInteger kOAIPetApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Add a new pet to the store
/// 
///
/// @param pet Pet object that needs to be added to the store (optional)
/// 
///  code:405 message:"Invalid input"
///
/// @return void
-(NSURLSessionTask*) addPetWithPet: (OAIPet*) pet
    completionHandler: (void (^)(NSError* error)) handler;


/// Deletes a pet
/// 
///
/// @param petId Pet id to delete
/// @param apiKey  (optional)
/// 
///  code:400 message:"Invalid pet value"
///
/// @return void
-(NSURLSessionTask*) deletePetWithPetId: (NSNumber*) petId
    apiKey: (NSString*) apiKey
    completionHandler: (void (^)(NSError* error)) handler;


/// Finds Pets by status
/// Multiple status values can be provided with comma separated strings
///
/// @param status Status values that need to be considered for filter (optional)
/// 
///  code:200 message:"successful operation",
///  code:400 message:"Invalid status value"
///
/// @return NSArray<OAIPet>*
-(NSURLSessionTask*) findPetsByStatusWithStatus: (NSArray<NSString*>*) status
    completionHandler: (void (^)(NSArray<OAIPet>* output, NSError* error)) handler;


/// Finds Pets by tags
/// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
///
/// @param tags Tags to filter by (optional)
/// 
///  code:200 message:"successful operation",
///  code:400 message:"Invalid tag value"
///
/// @return NSArray<OAIPet>*
-(NSURLSessionTask*) findPetsByTagsWithTags: (NSArray<NSString*>*) tags
    completionHandler: (void (^)(NSArray<OAIPet>* output, NSError* error)) handler;


/// Find pet by ID
/// Returns a pet when ID < 10.  ID > 10 or nonintegers will simulate API error conditions
///
/// @param petId ID of pet that needs to be fetched
/// 
///  code:200 message:"successful operation",
///  code:400 message:"Invalid ID supplied",
///  code:404 message:"Pet not found"
///
/// @return OAIPet*
-(NSURLSessionTask*) getPetByIdWithPetId: (NSNumber*) petId
    completionHandler: (void (^)(OAIPet* output, NSError* error)) handler;


/// Update an existing pet
/// 
///
/// @param pet Pet object that needs to be added to the store (optional)
/// 
///  code:400 message:"Invalid ID supplied",
///  code:404 message:"Pet not found",
///  code:405 message:"Validation exception"
///
/// @return void
-(NSURLSessionTask*) updatePetWithPet: (OAIPet*) pet
    completionHandler: (void (^)(NSError* error)) handler;


/// Updates a pet in the store with form data
/// 
///
/// @param petId ID of pet that needs to be updated
/// @param name Updated name of the pet (optional)
/// @param status Updated status of the pet (optional)
/// 
///  code:405 message:"Invalid input"
///
/// @return void
-(NSURLSessionTask*) updatePetWithFormWithPetId: (NSString*) petId
    name: (NSString*) name
    status: (NSString*) status
    completionHandler: (void (^)(NSError* error)) handler;


/// uploads an image
/// 
///
/// @param petId ID of pet to update
/// @param additionalMetadata Additional data to pass to server (optional)
/// @param file file to upload (optional)
/// 
///  code:0 message:"successful operation"
///
/// @return void
-(NSURLSessionTask*) uploadFileWithPetId: (NSNumber*) petId
    additionalMetadata: (NSString*) additionalMetadata
    file: (NSURL*) file
    completionHandler: (void (^)(NSError* error)) handler;



@end
