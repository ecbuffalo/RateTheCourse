//
//  MTFSessionStore.h
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import <Foundation/Foundation.h>
@class MTFSession;
@interface MTFSessionStore : NSObject
+ (instancetype)sessionStore;
@property (nonatomic, readonly) NSArray *allSessions;

- (MTFSession *)addSession;
- (void)removeSession:(MTFSession *)session;
- (BOOL)saveChanges;
@end
