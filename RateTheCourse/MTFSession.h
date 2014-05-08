//
//  MTFSession.h
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTFSession : NSObject <NSCoding>
@property NSString *name;
@property NSInteger option1Value;
@property NSInteger option2Value;
@property NSInteger option3Value;
@property NSInteger option4Value;
@property NSInteger option5Value;
@property NSString *option1;
@property NSString *option2;
@property NSString *option3;
@property NSString *option4;
@property NSString *option5;


@end
