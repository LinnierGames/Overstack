//
//  ViewController.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import "ViewController.h"

#import "UICustom.h"

@interface ViewController () < UICustomTableViewCellDelegate>

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

#pragma mark Return Functions > Pre-Defined Functions (TABLE VIEW)

//Sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
    
}

//Rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 81;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        UICustomTableViewCells *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell - Button"];
        if (!cell)
            cell = [UICustomTableViewCells cellWithType: CTCutomeTableViewCellButton];
        
        [cell.button setTitle: @"Hola" forState: UIControlStateNormal];
        
        [cell setDelegate: self]; //Very important that you set the delegate of each cell to the target, self
        
        return cell;
        
    } else {
        UICustomTableViewCells *cell = [tableView dequeueReusableCellWithIdentifier: @"Cell - Buttons"];
        if (!cell)
            cell = [UICustomTableViewCells cellWithType: CTCutomeTableViewCellButtons];
        
        [cell.button1 setTitle: @"Hi" forState: UIControlStateNormal];
        [cell.button2 setTag: 1];
        [cell.button2 setTitle: @"Good" forState: UIControlStateNormal];
        [cell.button2 setTag: 2];
        [cell.button3 setTitle: @"Hey" forState: UIControlStateNormal];
        [cell.button2 setTag: 3];
        
        [cell setDelegate: self]; //Very important that you set the delegate of each cell to the target, self
        
        return cell;
        
    }
    
}

#pragma mark - Void's

#pragma mark Void's > Pre-Defined Functions (CUSTOM TABLE VIEW CELLS)

- (void)cutomTableViewCell:(UICustomTableViewCells *)cell pressedButton:(UIButton *)button {
    NSLog( @"cutomTableViewCell:pressedButton: button was pressed");
    
}

- (void)cutomTableViewCell:(UICustomTableViewCells *)cell pressedSubbuton:(UIButton *)button {
    NSLog( @"cutomTableViewCell:pressedButton: button %@ was pressed", button);
    
}

#pragma mark - IBActions

#pragma mark - View Lifecycle



@end
