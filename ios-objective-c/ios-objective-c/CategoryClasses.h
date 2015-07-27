//
//  CategoryClasses.h
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/27/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSUInteger PERSON_name = 0;
static NSUInteger PERSON_age = 1;
static NSUInteger PERSON_isMale = 2;

@interface NSArray (ARRAY_PERSON_)

+ (id)arrayNEWPerson;
+ (id)arrayNEWPersonWithName:(NSString *)stringNameValue;
+ (id)arrayNEWPersonWithName:(NSString *)stringNameValue age:(NSUInteger)ageValue isMale:(BOOL)isMaleValue;
- (NSString *)objectPerson_name;
- (NSUInteger)objectPerson_age;
- (BOOL)objectPerson_isMale;

@end
