//
//  NXVObjectPool.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVObjectPool.h"

@interface NXVObjectPool ()

@property (nonatomic, strong) NSMutableArray *poolArray;

@end

@implementation NXVObjectPool

const static NSInteger kDefaultPoolSize = 10;
BOOL _acquiredArray[kDefaultPoolSize];

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

+ (instancetype)sharedInstance
{
    static NXVObjectPool *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[NXVObjectPool alloc] initSharedInstance];
    });
    
    return _sharedInstance;
}

- (NXVReusableObject *)acquireReusableObject
{
    NSInteger acquiredCount = [self acquiredCount];
    if (acquiredCount == kDefaultPoolSize) {
        return nil;
    }
    
    for (int i = 0; i < kDefaultPoolSize; ++i) {
        if (_acquiredArray[i]) {
            continue;
        }
        
        NXVReusableObject *reusableObject = self.poolArray[i];
        if (reusableObject) {
            return reusableObject;
        }
        
        NXVReusableObject *newReusableObject = [NXVReusableObject new];
        self.poolArray[i] = newReusableObject;
        return newReusableObject;
    }
    
    return nil; // should never happen
}

- (BOOL)releaseReusableObject:(NXVReusableObject *)reusableObject
{
    NSInteger index = [self.poolArray indexOfObject:reusableObject];
    if (_acquiredArray[index]) {
        _acquiredArray[index] = NO;
        return YES;
    }
    
    return NO;
}

#pragma mark - Private

- (instancetype)initSharedInstance
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.poolArray = [[NSMutableArray alloc] initWithCapacity:kDefaultPoolSize];
    for (int i = 0; i < kDefaultPoolSize; ++i) {
        _acquiredArray[i] = NO;
    }
    
    return self;
}

- (NSInteger)acquiredCount
{
    NSInteger count = 0;
    for (int i = 0; i < kDefaultPoolSize; ++i) {
        if (_acquiredArray[i]) {
            ++count;
        }
    }

    return count;
}

@end
