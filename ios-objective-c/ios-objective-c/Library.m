//
//  Library.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

//This file was imported in the overstack-prefix file
#import "Library.h"

@implementation Library

+ (Library *)controller {
    static Library *controller = nil;
    if (!controller)
        controller = [[Library alloc] init];
    return controller;
    
}

- (id)init {
    if (!(self=[super init])) return nil;
    return self;
    
}

+ (NSString *)dataFilePath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *dictionaryDocuments = [paths objectAtIndex: 0];
    
    return [dictionaryDocuments stringByAppendingPathComponent: @"database.plist"];
    
}

+ (NSArray *)returnContentsOfDatabase {
    if ([[NSFileManager defaultManager] fileExistsAtPath: [Library dataFilePath]])
        return [NSArray arrayWithContentsOfFile: [Library dataFilePath]];
    else
        return [NSArray array];
    
}

+ (NSArray *)returnFormattedPersonForArray:(const NSArray *)array {
    NSMutableArray *arrayFormatted = [array mutableCopy];
    for (int index = 0; index < [arrayFormatted count]; index += 1)
        [[arrayFormatted objectAtIndex: index] addObject: @{@"index": [NSNumber numberWithInt: index]}];
    
    return arrayFormatted;
    
}

@end
