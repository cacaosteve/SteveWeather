// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Conditions.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class Report;

@interface ConditionsID : NSManagedObjectID {}
@end

@interface _Conditions : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ConditionsID *objectID;

@property (nonatomic, strong, nullable) NSString* ident;

@property (nonatomic, strong, nullable) NSString* text;

@property (nonatomic, strong, nullable) Report *report;

@end

@interface _Conditions (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveIdent;
- (void)setPrimitiveIdent:(nullable NSString*)value;

- (nullable NSString*)primitiveText;
- (void)setPrimitiveText:(nullable NSString*)value;

- (nullable Report*)primitiveReport;
- (void)setPrimitiveReport:(nullable Report*)value;

@end

@interface ConditionsAttributes: NSObject 
+ (NSString *)ident;
+ (NSString *)text;
@end

@interface ConditionsRelationships: NSObject
+ (NSString *)report;
@end

NS_ASSUME_NONNULL_END
