//
//  NXVHapiness.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVHapiness.h"
#import "NXVSomethingAwesome.h"

@interface NXVHapiness ()
@property (nonatomic, strong) NXVSomethingAwesome *awesomeThing;
@end

@implementation NXVHapiness

#pragma mark - Adapter (wrapper) method

- (void)doSomethingAwful
{
    [self.awesomeThing doSomethingAwesome];
}

#pragma mark - Private

- (NXVSomethingAwesome *)awesomeThing
{
    if (!_awesomeThing) {
        _awesomeThing = [NXVSomethingAwesome new];
    }
    
    return _awesomeThing;
}

@end
