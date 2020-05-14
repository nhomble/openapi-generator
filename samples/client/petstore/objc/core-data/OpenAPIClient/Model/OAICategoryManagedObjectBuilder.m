

#import "OAICategoryManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

@implementation OAICategoryManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
    }
    return self;
}

-(OAICategoryManagedObject*)createNewOAICategoryManagedObjectInContext:(NSManagedObjectContext*)context {
    OAICategoryManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([OAICategoryManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(OAICategoryManagedObject*)OAICategoryManagedObjectFromOAICategory:(OAICategory*)object context:(NSManagedObjectContext*)context {
    OAICategoryManagedObject* newOAICategory = [self createNewOAICategoryManagedObjectInContext:context];
    [self updateOAICategoryManagedObject:newOAICategory withOAICategory:object];
    return newOAICategory;
}

-(void)updateOAICategoryManagedObject:(OAICategoryManagedObject*)managedObject withOAICategory:(OAICategory*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;
    managedObject._id = [object._id copy];
    managedObject.name = [object.name copy];

}

-(OAICategory*)OAICategoryFromOAICategoryManagedObject:(OAICategoryManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    OAICategory* newOAICategory = [[OAICategory alloc] init];
    [self updateOAICategory:newOAICategory withOAICategoryManagedObject:obj];
    return newOAICategory;
}

-(void)updateOAICategory:(OAICategory*)newOAICategory withOAICategoryManagedObject:(OAICategoryManagedObject*)obj {
    newOAICategory._id = [obj._id copy];
    newOAICategory.name = [obj.name copy];
}

@end
