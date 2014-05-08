//
//  MTFPollViewController.h
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MTFSession.h"

@interface MTFPollViewController : UIViewController
@property MTFSession *currentSession;
@property IBOutlet UIButton *option1;
@property IBOutlet UIButton *option2;
@property IBOutlet UIButton *option3;
@property IBOutlet UIButton *option4;
@property IBOutlet UIButton *option5;
@property IBOutlet UILabel *pollName;
@property (nonatomic, strong) NSString *pass;


@end
