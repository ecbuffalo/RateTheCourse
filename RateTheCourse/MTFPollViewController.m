//
//  MTFPollViewController.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFPollViewController.h"
#import "MTFSession.h"
#import "MTFSuggestionEntryViewController.h"

@interface MTFPollViewController () <UITextFieldDelegate>

@end

@implementation MTFPollViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    MTFSession *session = self.currentSession;
    [self.option1 setTitle:session.option1 forState:UIControlStateNormal];
    [self.option2 setTitle:session.option2 forState:UIControlStateNormal];
    [self.option3 setTitle:session.option3 forState:UIControlStateNormal];
    [self.option4 setTitle:session.option4 forState:UIControlStateNormal];
    [self.option5 setTitle:session.option5 forState:UIControlStateNormal];
    self.pollName.text = session.name;
    self.navigationController.navigationBarHidden = YES;
    
    
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
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
- (IBAction)endPoll:(id)sender
{

    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)startOver:(id)sender
{
    self.currentSession.option1Value = 0;
    self.currentSession.option2Value = 0;
    self.currentSession.option3Value = 0;
    self.currentSession.option4Value = 0;
    self.currentSession.option5Value = 0;
}
- (IBAction)option1Clicked:(id)sender
{
    self.currentSession.option1Value += 1;
    
     
}
- (IBAction)option2Clicked:(id)sender
{
    self.currentSession.option2Value += 1;
    
}
- (IBAction)option3Clicked:(id)sender
{
    self.currentSession.option3Value += 1;
    
}
- (IBAction)option4Clicked:(id)sender
{
    self.currentSession.option4Value += 1;
    
}
- (IBAction)option5Clicked:(id)sender
{
    self.currentSession.option5Value += 1;
    MTFSuggestionEntryViewController *svc = [[MTFSuggestionEntryViewController alloc]init];
    [self.navigationController pushViewController:svc
                                         animated:YES];
    
}








@end
