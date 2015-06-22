//
//  NXVFirstFactory.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVFirstFactory.h"
#import "NXVFirstFactoryProductA.h"
#import "NXVFirstFactoryProductB.h"

@implementation NXVFirstFactory

- (id<NXVAbstractProductA>)createProductA
{
    return [NXVFirstFactoryProductA new];
}

- (id<NXVAbstractProductB>)createProductB
{
    return [NXVFirstFactoryProductB new];
}

@end
