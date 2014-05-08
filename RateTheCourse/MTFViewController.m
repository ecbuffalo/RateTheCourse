//
//  MTFViewController.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFViewController.h"

@interface MTFViewController ()
@property NSMutableDictionary *valueList;
@property IBOutlet UILabel *oneCount;
@property IBOutlet UILabel *twoCount;
@end
@implementation MTFViewController

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
    _valueList = [[NSMutableDictionary alloc]init];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addOne:(id)sender
{
    NSNumber *count = [_valueList objectForKey:@"one"];
    if (count) {
        NSNumber *newCount = [[NSNumber alloc]initWithInt:[count intValue] + 1];
        [_valueList setObject:newCount forKey:@"one"];
        
    }else {
        NSNumber *count = [[NSNumber alloc]initWithInt:1];
        [_valueList setObject:count forKey:@"one"];
    }
}
- (IBAction)addTwo:(id)sender
{
    NSLog(@"add two");
    NSNumber *count = [_valueList objectForKey:@"two"];
    if (count) {
        NSNumber *newCount = [[NSNumber alloc]initWithInt:[count intValue] + 1];
        [_valueList setObject:newCount forKey:@"two"];
        
    }else {
        NSNumber *count = [[NSNumber alloc]initWithInt:1];
        [_valueList setObject:count forKey:@"two"];
    }
}
- (IBAction)showValue:(id)sender
{
    if ([_valueList objectForKey:@"one"]) {
    self.oneCount.text = [NSString stringWithFormat:@"%@",[_valueList objectForKey:@"one"]];
    } else {
        self.oneCount.text = [NSString stringWithFormat:@"0"];
    }
    if ([_valueList objectForKey:@"two"]){
    self.twoCount.text = [NSString stringWithFormat:@"%@",[_valueList objectForKey:@"two"]];
    } else {
        self.twoCount.text = [NSString stringWithFormat:@"0"];
    }
    [self.view setNeedsDisplay];
}
@end
