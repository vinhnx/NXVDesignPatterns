//
//  NXVAbstraction.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVAbstraction.h"

@implementation NXVAbstraction

- (void)doSomething:(NSString *)command
{
    [self.implementor doSomething:command];
}

- (void)performFirstAction
{
    // Override me
}

- (void)performSecondAction
{
    // Override me
}

@end
