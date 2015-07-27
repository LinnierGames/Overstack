//
//  RecordEditorViewController.h
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/23/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : int {
    CTRecordAdding,
    CTRecordModify
    
} CDRecordOptions;

@interface RecordEditorViewController : UIViewController

@property ( assign, readonly ) CDRecordOptions option;

- (id)initWithRecord:(NSArray *)arrayRecord option:(CDRecordOptions)optionValue;

@end
