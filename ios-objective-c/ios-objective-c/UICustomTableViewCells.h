//
//  UICustomTableViewCells.h
//  ios-objective-c
//
//  Created by Erick Sanchez on 8/7/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import <UIKit/UIKit.h>

//Use this enumeration to keep track of all the custom cells i create, be sure to match
//the corresponding xib cell to the int value, 0 witht the first cell, 1 to the second, etc
typedef enum : NSUInteger {
    CTCutomeTableViewCellButton = 0,
    CTCutomeTableViewCellButtons = 1
    
} CDCustomTableViewCells;

@protocol UICustomTableViewCellDelegate;

@interface UICustomTableViewCells : UITableViewCell

//create properties to allow other classes to access the controls, like buttons and labels
@property ( nonatomic, retain) IBOutlet UIButton *button;
@property ( nonatomic, retain) IBOutlet UIButton *button1;
@property ( nonatomic, retain) IBOutlet UIButton *button2;
@property ( nonatomic, retain) IBOutlet UIButton *button3;

@property ( assign) id< UICustomTableViewCellDelegate> delegate;

+ (id)cellWithType:(CDCustomTableViewCells)cellType;

@end

@protocol UICustomTableViewCellDelegate <NSObject>
@optional

//These are the protocol methods you'll implement in your view controller, or whoever is the delegate,
//you can check out the IBAction's in the .m file to see how to call these methods
- (void)cutomTableViewCell:(UICustomTableViewCells *)cell pressedButton:(UIButton *)button;
- (void)cutomTableViewCell:(UICustomTableViewCells *)cell pressedSubbuton:(UIButton *)button;

@end