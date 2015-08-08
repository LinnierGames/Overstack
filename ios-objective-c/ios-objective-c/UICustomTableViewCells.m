//
//  UICustomTableViewCells.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 8/7/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import "UICustomTableViewCells.h"

@implementation UICustomTableViewCells
@synthesize delegate;

+ (id)cellWithType:(CDCustomTableViewCells)cellType {
    return [[[NSBundle mainBundle] loadNibNamed: @"UICustomTableViewCells" owner: self options:  NULL] objectAtIndex: cellType];
    
}

- (IBAction)pressButton:(id)sender {
    if ([delegate respondsToSelector: @selector( cutomTableViewCell:pressedButton:)]) //be sure to first check if the delegate has implemented the methods before calling to prevent crashing
        [delegate cutomTableViewCell: self pressedButton: sender];
    
}

- (IBAction)pressSubbutton:(id)sender {
    if ([delegate respondsToSelector: @selector( cutomTableViewCell:pressedSubbuton:)]) //be sure to first check if the delegate has implemented the methods before calling to prevent crashing
        [delegate cutomTableViewCell: self pressedSubbuton: sender];
    
    
}

@end
