//
//  ViewController.m
//  Datepickersample
//
//  Created by Thabib on 30/01/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize dateActionSheet = dateActionSheet_;
@synthesize datePicker = datePicker_;
@synthesize dateButton = dateButton_;


- (void)viewDidLoad
{

    [super viewDidLoad];
    dateActionSheet_ = [[UIActionSheet alloc] initWithTitle:@"Select Date"
                                                   delegate:self
                                          cancelButtonTitle:nil
                                     destructiveButtonTitle:nil
                                          otherButtonTitles:nil];
    
    datePicker_ = [[UIDatePicker alloc] initWithFrame:CGRectMake(0.0, 44.0, 0.0, 0.0)];
    [self.datePicker setDatePickerMode:UIDatePickerModeDate];
      UIToolbar *pickerDateToolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    
    pickerDateToolbar.barStyle = UIBarStyleBlackOpaque;
    [pickerDateToolbar sizeToFit];
    
    NSMutableArray *barItems = [[NSMutableArray alloc] init];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    [barItems addObject:flexSpace];
    
    
    UIBarButtonItem *doneBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(datePickerDoneClick:)];
    [barItems addObject:doneBtn];
    
    
    [pickerDateToolbar setItems:barItems animated:YES];
    
    [self.dateActionSheet addSubview:pickerDateToolbar];
    [self.dateActionSheet addSubview:self.datePicker];
   
    
}

-(void)datePickerDoneClick:(id)sender{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MMMM YYYY"];
    
    NSString *dateString = [formatter stringFromDate:self.datePicker.date];
    
    
    self.datelabel.text = dateString;
    [self.dateActionSheet dismissWithClickedButtonIndex:0 animated:YES];
}





- (IBAction)DatebuttonClicked:(id)sender
{
    [self.dateActionSheet showInView:self.view];
    [self.dateActionSheet setBounds:CGRectMake(0,0,320, 464)];
}
@end
