//
//  MTFSessionViewController.h
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTFSession.h"

@interface MTFSessionViewController : UIViewController
@property MTFSession *currentSession;
@property (nonatomic,weak) IBOutlet UITextField *name;
@property (nonatomic,weak) IBOutlet UITextField *option1;
@property (nonatomic,weak) IBOutlet UITextField *option2;
@property (nonatomic,weak) IBOutlet UITextField *option3;
@property (nonatomic,weak) IBOutlet UITextField *option4;
@property (nonatomic,weak) IBOutlet UITextField *option5;
@property (nonatomic,weak) IBOutlet UILabel *option1Value;
@property (nonatomic,weak) IBOutlet UILabel *option2Value;
@property (nonatomic,weak) IBOutlet UILabel *option3Value;
@property (nonatomic,weak) IBOutlet UILabel *option4Value;
@property (nonatomic,weak) IBOutlet UILabel *option5Value;




@end
