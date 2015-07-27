//
//  Library.h
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Library : NSObject

+ (Library *)controller;

/**
 * Since this function does not need anything from its instance class, we use a + vs a - to access this method a
 * a class method
 * @return NSString : direct file path of the database.plist
 */
+ (NSString *)dataFilePath;

/**
 * This will return an array containing all elements of the database. no
 * formating is done
 * @return NSArray : person format ( name, age, isMale )
 */
+ (NSArray *)returnContentsOfDatabase;

/**
 * This will format the value in the paremeterlist to save the index as a
 * dictionary in the last index
 * @param [in,out] array : will be copied to save the index from where it
 * lies in the database
 * @return NSArray : person format ( name, age, isMale, dictionary:index )
 */
+ (NSArray *)returnFormattedPersonForArray:(const NSArray *)array;

@end
