// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Report.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class Airport;
@class Conditions;

@interface ReportID : NSManagedObjectID {}
@end

@interface _Report : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ReportID *objectID;

@property (nonatomic, strong, nullable) Airport *airport;

@property (nonatomic, strong, nullable) Conditions *conditions;

@end

@interface _Report (CoreDataGeneratedPrimitiveAccessors)

- (nullable Airport*)primitiveAirport;
- (void)setPrimitiveAirport:(nullable Airport*)value;

- (nullable Conditions*)primitiveConditions;
- (void)setPrimitiveConditions:(nullable Conditions*)value;

@end

@interface ReportRelationships: NSObject
+ (NSString *)airport;
+ (NSString *)conditions;
@end

NS_ASSUME_NONNULL_END
