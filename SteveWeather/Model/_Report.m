// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Report.m instead.

#import "_Report.h"

@implementation ReportID
@end

@implementation _Report

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Report" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Report";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Report" inManagedObjectContext:moc_];
}

- (ReportID*)objectID {
	return (ReportID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic airport;

@dynamic conditions;

@end

@implementation ReportRelationships 
+ (NSString *)airport {
	return @"airport";
}
+ (NSString *)conditions {
	return @"conditions";
}
@end

