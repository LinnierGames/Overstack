//
//  RecordEditorViewController.m
//  ios-objective-c
//
//  Created by Erick Sanchez on 7/23/15.
//  Copyright (c) 2015 Erick Sanchez. All rights reserved.
//

#import "RecordEditorViewController.h"

@interface RecordEditorViewController () < UITextFieldDelegate> {
    IBOutlet UITextField *textName;
    
    NSMutableArray *arrayM;
    
}

@end

@implementation RecordEditorViewController
@synthesize option;

#pragma mark - Return Functions

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
    if (self) {
        //Customize
        
    }
    
    return self;
    
}

- (id)initWithRecord:(NSArray *)arrayRecord option:(CDRecordOptions)optionValue {
    self = [super initWithNibName: @"RecordEditorViewController" bundle: [NSBundle mainBundle]];
    
    if (self) {
        [self.navigationItem setLeftBarButtonItem: [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemCancel target: self action: @selector( pressLeftNav:)]];
        [self.navigationItem setRightBarButtonItem: [[UIBarButtonItem alloc] initWithTitle: @"Save" style: UIBarButtonItemStylePlain target: self action: @selector( pressRightNav:)]];
        
        arrayM = [[NSMutableArray alloc] initWithArray: arrayRecord];
        option = optionValue;
        if (option == CTRecordAdding)
            [self.navigationItem setTitle: @"New"];
        else
            [self.navigationItem setTitle: @"Modify"];
        
    }
    
    return self;
    
}

#pragma mark - Void's

#pragma mark - IBActions

- (void)pressLeftNav:(id)sender {
    [self.navigationController popViewControllerAnimated: YES];
}

- (void)pressRightNav:(id)sender {
    NSMutableArray *arrayDatabase = [NSMutableArray arrayWithArray: [Library returnContentsOfDatabase]];
    if (option == CTRecordAdding) { //Adding a New Record
        [arrayDatabase insertObject: arrayM atIndex: 0];
        [arrayDatabase writeToFile: [Library dataFilePath] atomically: YES];
        
    } else { //Saving Changes from existing record
        
    }
    
    [self.navigationController popViewControllerAnimated: YES];
    
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    //In here is wher you'd load the data, inside arrayM, into the forum. Like Putting the string from name into
    //a textfield.text, etc
    [textName setText: [arrayM objectPerson_name]];
    NSLog( @"%@", arrayM);
    
}

@end
