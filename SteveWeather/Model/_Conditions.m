// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Conditions.m instead.

#import "_Conditions.h"

@implementation ConditionsID
@end

@implementation _Conditions

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Conditions" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Conditions";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Conditions" inManagedObjectContext:moc_];
}

- (ConditionsID*)objectID {
	return (ConditionsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic ident;

@dynamic text;

@dynamic report;

@end

@implementation ConditionsAttributes 
+ (NSString *)ident {
	return @"ident";
}
+ (NSString *)text {
	return @"text";
}
@end

@implementation ConditionsRelationships 
+ (NSString *)report {
	return @"report";
}
@end

