//
//  ViewController.h
//  Datepickersample
//
//  Created by Thabib on 30/01/14.
//  Copyright (c) 2014 peer mohamed thabib. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate>


@property (nonatomic, retain) UIActionSheet *dateActionSheet;
@property (nonatomic, retain) UIDatePicker *datePicker;
@property (nonatomic, retain) IBOutlet UIButton *dateButton;
- (IBAction)DatebuttonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *datelabel;






@end
