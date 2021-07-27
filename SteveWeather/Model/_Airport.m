// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Airport.m instead.

#import "_Airport.h"

@implementation AirportID
@end

@implementation _Airport

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Airport" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Airport";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Airport" inManagedObjectContext:moc_];
}

- (AirportID*)objectID {
	return (AirportID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic identifierCode;

@dynamic report;

@end

@implementation AirportAttributes 
+ (NSString *)identifierCode {
	return @"identifierCode";
}
@end

@implementation AirportRelationships 
+ (NSString *)report {
	return @"report";
}
@end

