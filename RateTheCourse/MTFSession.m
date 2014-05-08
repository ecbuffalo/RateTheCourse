//
//  MTFSession.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFSession.h"

@implementation MTFSession


- (instancetype)init
{
    self = [super init];
    self.name = @"New Session";
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.option1 forKey:@"option1"];
    [aCoder encodeObject:self.option2 forKey:@"option2"];
    [aCoder encodeObject:self.option3 forKey:@"option3"];
    [aCoder encodeObject:self.option4 forKey:@"option4"];
    [aCoder encodeObject:self.option5 forKey:@"option5"];
    [aCoder encodeInteger:self.option1Value forKey:@"option1Value"];
    [aCoder encodeInteger:self.option2Value forKey:@"option2Value"];
    [aCoder encodeInteger:self.option3Value forKey:@"option3Value"];
    [aCoder encodeInteger:self.option4Value forKey:@"option4Value"];
    [aCoder encodeInteger:self.option5Value forKey:@"option5Value"];
    
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        _name = [aDecoder decodeObjectForKey:@"name"];
        _option1 = [aDecoder decodeObjectForKey:@"option1"];
        _option2 = [aDecoder decodeObjectForKey:@"option2"];
        _option3 = [aDecoder decodeObjectForKey:@"option3"];
        _option4 = [aDecoder decodeObjectForKey:@"option4"];
        _option5 = [aDecoder decodeObjectForKey:@"option5"];
        _option1Value = [aDecoder decodeIntegerForKey:@"option1Value"];
        _option2Value = [aDecoder decodeIntegerForKey:@"option2Value"];
        _option3Value = [aDecoder decodeIntegerForKey:@"option3Value"];
        _option4Value = [aDecoder decodeIntegerForKey:@"option4Value"];
        _option5Value = [aDecoder decodeIntegerForKey:@"option5Value"];
    }
    return  self;
}
@end
