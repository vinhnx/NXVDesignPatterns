//
//  NXVConcretePrototypeA.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcretePrototypeA.h"

@implementation NXVConcretePrototypeA

#pragma mark - NSCopying Protocol

- (id)copyWithZone:(NSZone *)zone
{
    // cloning a copy
    NXVConcretePrototypeA *clone = [[NXVConcretePrototypeA allocWithZone:zone] init];
    clone.foo = self.foo;
    return clone;
}

@end
