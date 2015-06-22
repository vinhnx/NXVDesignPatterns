//
//  NXVConcretePrototypeB.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcretePrototypeB.h"

@implementation NXVConcretePrototypeB

#pragma mark - NSCopying Method

- (id)copyWithZone:(NSZone *)zone
{
    NXVConcretePrototypeB *clone = [[NXVConcretePrototypeB allocWithZone:zone] init];
    clone.bar = self.bar;
    return clone;
}

@end
