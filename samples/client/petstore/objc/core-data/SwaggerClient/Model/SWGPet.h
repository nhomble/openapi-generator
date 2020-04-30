#import <Foundation/Foundation.h>
#import "SWGObject.h"

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


#import "SWGCategory.h"
#import "SWGTag.h"
@protocol SWGCategory;
@class SWGCategory;
@protocol SWGTag;
@class SWGTag;



@protocol SWGPet
@end

@interface SWGPet : SWGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) SWGCategory* category;

@property(nonatomic) NSString* name;

@property(nonatomic) NSArray<NSString*>* photoUrls;

@property(nonatomic) NSArray<SWGTag>* tags;
/* pet status in the store [optional]
 */
@property(nonatomic) NSString* status;

@end
