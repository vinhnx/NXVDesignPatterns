//
//  NXVSingleton.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVSingleton.h"

@implementation NXVSingleton

#pragma mark - Init Methods

- (instancetype)init
{
    [NSException raise:[self.class description]
                format:@"Please use +sharedInstance instead"];
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    [NSException raise:[self.class description]
                format:@"Please use +sharedInstance instead"];
    return nil;
}

#pragma mark - Public

+ (instancetype)sharedInstance {
    static NXVSingleton *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[NXVSingleton alloc] initSharedInstance];
    });
    
    return _sharedInstance;
}

#pragma mark - Private

- (instancetype)initSharedInstance
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    // hello world!
    
    return self;
}

@end
