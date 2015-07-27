//
//  ViewController.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/19/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

//Accessing a Property from another class http://stackoverflow.com/questions/31502216/accessing-a-property-from-another-class/31503693#31503693

#import "ViewController.h"

#import "RecordEditorViewController.h"

@interface ViewController () < UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *arrayTable;
    
}

@end

@implementation ViewController

#pragma mark - Return Functions

#pragma mark Return Functions > Pre-Defined Functions (TABLE VIEW)

//Sections
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}

//Rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayTable count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell"];
    if (!cell)
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: @"cell"];
    //Customize Cell
    
    [cell.textLabel setText: [[arrayTable objectAtIndex: indexPath.row] objectAtIndex: 0]];
    
    return cell;
    
}

#pragma mark - Void's

- (void)reloadTable {
    arrayTable = [NSMutableArray arrayWithArray: [Library returnFormattedPersonForArray: [Library returnContentsOfDatabase]]];
    [tableview reloadData];
    
}

#pragma mark Void's > Pre-Defined Functions (TABLE VIEW)

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController: [[RecordEditorViewController alloc] initWithRecord: [arrayTable objectAtIndex: indexPath.row] option: CTRecordModify] animated: YES];
    
}

#pragma mark - IBActions

- (void)pressLeftNav:(id)sender {
    
}

- (void)pressRightNav:(id)sender {
    RecordEditorViewController *viewNew = [[RecordEditorViewController alloc] initWithRecord: [NSMutableArray arrayNEWPerson] option: CTRecordAdding];
    [self.navigationController pushViewController: viewNew animated: YES];
    
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    arrayTable = [NSMutableArray new];
    
    [self.navigationItem setLeftBarButtonItem: [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemEdit target: self action: @selector( pressLeftNav:)]];
    [self.navigationItem setRightBarButtonItem: [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd target: self action: @selector( pressRightNav:)]];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [self reloadTable];
    [tableview reloadData];
    
}

@end
