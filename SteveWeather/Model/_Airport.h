// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Airport.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class Report;

@interface AirportID : NSManagedObjectID {}
@end

@interface _Airport : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (nullable NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) AirportID *objectID;

@property (nonatomic, strong, nullable) NSString* identifierCode;

@property (nonatomic, strong, nullable) Report *report;

@end

@interface _Airport (CoreDataGeneratedPrimitiveAccessors)

- (nullable NSString*)primitiveIdentifierCode;
- (void)setPrimitiveIdentifierCode:(nullable NSString*)value;

- (nullable Report*)primitiveReport;
- (void)setPrimitiveReport:(nullable Report*)value;

@end

@interface AirportAttributes: NSObject 
+ (NSString *)identifierCode;
@end

@interface AirportRelationships: NSObject
+ (NSString *)report;
@end

NS_ASSUME_NONNULL_END
