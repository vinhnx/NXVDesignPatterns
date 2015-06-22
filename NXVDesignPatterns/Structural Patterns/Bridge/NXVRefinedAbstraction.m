//
//  NXVRefinedAbstraction.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVRefinedAbstraction.h"

@implementation NXVRefinedAbstraction

- (void)performFirstAction
{
    [self doSomething:@"command 1"];
}

- (void)performSecondAction
{
    [self doSomething:@"command 2"];
}

@end
