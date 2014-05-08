//
//  MTFSessionStore.m
//  RateTheCourse
//
//  Created by matthewfjerstad on 4/29/14.
//  Copyright (c) 2014 matthewfjerstad. All rights reserved.
//

#import "MTFSessionStore.h"
#import "MTFSession.h"
@interface MTFSessionStore ()
@property (nonatomic) NSMutableArray *privateSessions;
@end
@implementation MTFSessionStore
+ (instancetype)sessionStore
{
    static MTFSessionStore *sessionStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sessionStore = [[self alloc] initPrivate];
    });
    return sessionStore;
}
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        NSString *path = [self itemArchivePath];
        _privateSessions = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
        if (!_privateSessions) {
            _privateSessions = [[NSMutableArray alloc]init];
        }
    }
    return self;
}
- (NSArray *)allSessions;
{
    return self.privateSessions;
}
- (MTFSession *)addSession
{
    MTFSession *session = [[MTFSession alloc]init];
    [self.privateSessions addObject:session];
    return session;
}
- (void)removeSession:(MTFSession *)session
{
    [self.privateSessions removeObject:session];
}
- (NSString *)itemArchivePath
{
    NSArray *documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [documentDirectories firstObject];
    return [documentDirectory stringByAppendingPathComponent:@"sessions.archive"];
}
- (BOOL)saveChanges
{
    NSString *path = [self itemArchivePath];
    return [NSKeyedArchiver archiveRootObject:self.privateSessions
                                       toFile:path];
}
@end
