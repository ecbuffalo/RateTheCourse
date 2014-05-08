//
//  MTFSessionViewController.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFSessionViewController.h"
#import "MTFSession.h"
#import "MTFPollViewController.h"

@interface MTFSessionViewController () <UITextFieldDelegate>

@end

@implementation MTFSessionViewController
@synthesize option1;
@synthesize option2;
@synthesize option3;
@synthesize option4;
@synthesize option5;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}
- (IBAction)backgroundTapped:(id)sender
{
    [self.view endEditing:YES];
    self.currentSession.name = self.name.text;
    self.currentSession.option1 = self.option1.text;
    self.currentSession.option2 = self.option2.text;
    self.currentSession.option3 = self.option3.text;
    self.currentSession.option4 = self.option4.text;
    self.currentSession.option5 = self.option5.text;
    [self.view setNeedsDisplay];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    MTFSession *session = self.currentSession;
    self.name.text = session.name;
    self.option1.text = session.option1;
    self.option2.text = session.option2;
    self.option3.text = session.option3;
    self.option4.text = session.option4;
    self.option5.text = session.option5;
    self.option1Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option1Value];
    self.option2Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option2Value];
    self.option3Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option3Value];
    self.option4Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option4Value];
    self.option5Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option5Value];
    self.navigationController.navigationBarHidden = NO;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    self.currentSession.name = self.name.text;
    self.currentSession.option1 = self.option1.text;
    self.currentSession.option2 = self.option2.text;
    self.currentSession.option3 = self.option3.text;
    self.currentSession.option4 = self.option4.text;
    self.currentSession.option5 = self.option5.text;
    [self.view setNeedsDisplay];
    return YES;
}
- (IBAction)startPoll:(id)sender
{
    MTFPollViewController *pollView = [[MTFPollViewController alloc]init];
    pollView.currentSession = self.currentSession;
    [self.navigationController pushViewController:pollView
                                         animated:YES];
    
    
}
- (IBAction)clearOptions:(id)sender
{
    self.currentSession.option1 = @"";
    self.currentSession.option2 = @"";
    self.currentSession.option3 = @"";
    self.currentSession.option4 = @"";
    self.currentSession.option5 = @"";
    self.option1.text = self.currentSession.option1;
    self.option2.text = self.currentSession.option2;
    self.option3.text = self.currentSession.option3;
    self.option4.text = self.currentSession.option4;
    self.option5.text = self.currentSession.option5;
    [self.view reloadInputViews];
}
- (IBAction)clearResults:(id)sender
{
    self.currentSession.option1Value = 0;
    self.currentSession.option2Value = 0;
    self.currentSession.option3Value = 0;
    self.currentSession.option4Value = 0;
    self.currentSession.option5Value = 0;
    self.option1Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option1Value];
    self.option2Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option2Value];
    self.option3Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option3Value];
    self.option4Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option4Value];
    self.option5Value.text = [NSString stringWithFormat:@"%ld",(long)self.currentSession.option5Value];
    [self.view setNeedsDisplay];
}
- (IBAction)setOptionDefaults:(id)sender
{
    self.currentSession.option1 = @"Perfect, wouldn't change a thing!";
    self.currentSession.option2 = @"Great!";
    self.currentSession.option3 = @"Good";
    self.currentSession.option4 = @"OK";
    self.currentSession.option5 = @"Not good, I have suggestions...";
    self.option1.text = self.currentSession.option1;
    self.option2.text = self.currentSession.option2;
    self.option3.text = self.currentSession.option3;
    self.option4.text = self.currentSession.option4;
    self.option5.text = self.currentSession.option5;
    [self.view setNeedsDisplay];
}
@end
