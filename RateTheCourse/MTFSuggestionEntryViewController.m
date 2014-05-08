//
//  MTFSuggestionEntryViewController.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 5/7/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFSuggestionEntryViewController.h"

@interface MTFSuggestionEntryViewController () 

@end

@implementation MTFSuggestionEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
- (IBAction)noThanks:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)submit:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
