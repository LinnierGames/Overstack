//
//  ViewController.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () < UIPickerViewDataSource, UIPickerViewDelegate> {
    IBOutlet UILabel *labelEmotion;
    
}

@end

@implementation ViewController

#pragma mark - Return Functions

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
    if (self) {
        //Customize
        
    }
    
    return self;
    
}

#pragma mark Returning Values > Pre-Defined Functions (PICKER VIEW)

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [NSEmotionsList() count];
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return NSEmotionTitleForEmotion( [[NSEmotionsList() objectAtIndex: row] intValue]);
    
}

#pragma mark - Void's

#pragma mark Void's > Pre-Defined Functions (PICKER VIEW)

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [labelEmotion setText: NSEmotionTitleForEmotion( [[NSEmotionsList() objectAtIndex: row] intValue])];
    
}

#pragma mark - IBActions

#pragma mark - View Lifecycle



@end
