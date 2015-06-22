//
//  NXVConcreteDecorator.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteDecorator.h"

@implementation NXVConcreteDecorator

- (void)doSomething
{
    [super doSomething];
    [self doAnothingInstead];
}

- (void)doAnothingInstead
{
    // do anothing
}

@end
