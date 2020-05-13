#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


#import "SWGUserManagedObject.h"
#import "SWGUser.h"

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


@interface SWGUserManagedObjectBuilder : NSObject



-(SWGUserManagedObject*)createNewSWGUserManagedObjectInContext:(NSManagedObjectContext*)context;

-(SWGUserManagedObject*)SWGUserManagedObjectFromSWGUser:(SWGUser*)object context:(NSManagedObjectContext*)context;

-(void)updateSWGUserManagedObject:(SWGUserManagedObject*)object withSWGUser:(SWGUser*)object2;

-(SWGUser*)SWGUserFromSWGUserManagedObject:(SWGUserManagedObject*)obj;

-(void)updateSWGUser:(SWGUser*)object withSWGUserManagedObject:(SWGUserManagedObject*)object2;

@end
