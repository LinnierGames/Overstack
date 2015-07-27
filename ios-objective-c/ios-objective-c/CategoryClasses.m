//
//  CategoryClasses.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/27/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

//This file was imported in the overstack-prefix file
#import "CategoryClasses.h"

@implementation NSArray (ARRAY_PERSON_)

+ (id)arrayNEWPerson {
    return [NSMutableArray arrayNEWPersonWithName: @"New Person"];
    
}

+ (id)arrayNEWPersonWithName:(NSString *)stringNameValue {
    return [NSMutableArray arrayNEWPersonWithName: stringNameValue age: 0 isMale: YES];
    
}

+ (id)arrayNEWPersonWithName:(NSString *)stringNameValue age:(NSUInteger)ageValue isMale:(BOOL)isMaleValue {
    return [NSMutableArray arrayWithObjects: stringNameValue, [NSNumber numberWithUnsignedInteger: ageValue], [NSNumber numberWithBool: isMaleValue], nil];
    
}

- (NSString *)objectPerson_name {
    return [self objectAtIndex: PERSON_name];
    
}

- (NSUInteger)objectPerson_age {
    return [[self objectAtIndex: PERSON_age] unsignedIntegerValue];
    
}

- (BOOL)objectPerson_isMale {
    return [[self objectAtIndex: PERSON_isMale] boolValue];
    
}


@end
