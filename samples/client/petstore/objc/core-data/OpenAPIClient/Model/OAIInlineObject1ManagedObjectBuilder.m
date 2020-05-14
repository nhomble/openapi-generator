

#import "OAIInlineObject1ManagedObjectBuilder.h"

/**
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/

@implementation OAIInlineObject1ManagedObjectBuilder

-(instancetype)init {
    self = [super init];
    if (self != nil) {
    }
    return self;
}

-(OAIInlineObject1ManagedObject*)createNewOAIInlineObject1ManagedObjectInContext:(NSManagedObjectContext*)context {
    OAIInlineObject1ManagedObject *managedObject = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([OAIInlineObject1ManagedObject class]) inManagedObjectContext:context];
    return managedObject;
}

-(OAIInlineObject1ManagedObject*)OAIInlineObject1ManagedObjectFromOAIInlineObject1:(OAIInlineObject1*)object context:(NSManagedObjectContext*)context {
    OAIInlineObject1ManagedObject* newOAIInlineObject1 = [self createNewOAIInlineObject1ManagedObjectInContext:context];
    [self updateOAIInlineObject1ManagedObject:newOAIInlineObject1 withOAIInlineObject1:object];
    return newOAIInlineObject1;
}

-(void)updateOAIInlineObject1ManagedObject:(OAIInlineObject1ManagedObject*)managedObject withOAIInlineObject1:(OAIInlineObject1*)object {
    if(!managedObject || !object) {
        return;
    }
    NSManagedObjectContext* context = managedObject.managedObjectContext;
    managedObject.additionalMetadata = [object.additionalMetadata copy];
    managedObject.file = [object.file copy];

}

-(OAIInlineObject1*)OAIInlineObject1FromOAIInlineObject1ManagedObject:(OAIInlineObject1ManagedObject*)obj {
    if(!obj) {
        return nil;
    }
    OAIInlineObject1* newOAIInlineObject1 = [[OAIInlineObject1 alloc] init];
    [self updateOAIInlineObject1:newOAIInlineObject1 withOAIInlineObject1ManagedObject:obj];
    return newOAIInlineObject1;
}

-(void)updateOAIInlineObject1:(OAIInlineObject1*)newOAIInlineObject1 withOAIInlineObject1ManagedObject:(OAIInlineObject1ManagedObject*)obj {
    newOAIInlineObject1.additionalMetadata = [obj.additionalMetadata copy];
    newOAIInlineObject1.file = [obj.file copy];
}

@end
