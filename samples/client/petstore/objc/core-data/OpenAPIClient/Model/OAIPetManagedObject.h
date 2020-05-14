#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

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


#import "OAICategoryManagedObject.h"
#import "OAITagManagedObject.h"


NS_ASSUME_NONNULL_BEGIN

@interface OAIPetManagedObject : NSManagedObject


@property (nullable, nonatomic, retain) NSNumber* _id;

@property (nullable, nonatomic, retain) OAICategoryManagedObject* category;

@property (nullable, nonatomic, retain) NSString* name;

@property (nullable, nonatomic, retain) NSArray<NSString*>* photoUrls;

@property (nullable, nonatomic, retain) NSOrderedSet<OAITagManagedObject*>* tags;
/* pet status in the store [optional]
 */
@property (nullable, nonatomic, retain) NSString* status;
@end

@interface OAIPetManagedObject (GeneratedAccessors)
- (void)addTagsObject:(OAITagManagedObject *)value;
- (void)removeTagsObject:(OAITagManagedObject *)value;
- (void)addTags:(NSOrderedSet<OAITagManagedObject*> *)values;
- (void)removeTags:(NSOrderedSet<OAITagManagedObject*> *)values;

@end


NS_ASSUME_NONNULL_END
