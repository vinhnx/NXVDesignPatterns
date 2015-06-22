//
//  NXVSecondFactory.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVSecondFactory.h"
#import "NXVSecondFactoryProductA.h"
#import "NXVSecondFactoryProductB.h"

@implementation NXVSecondFactory

- (id<NXVAbstractProductA>)createProductA
{
    return [NXVSecondFactoryProductA new];
}

- (id<NXVAbstractProductB>)createProductB
{
    return [NXVSecondFactoryProductB new];
}

@end
