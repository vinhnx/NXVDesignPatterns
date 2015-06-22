//
//  NXVConcreteProductB.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteProductB.h"

@implementation NXVConcreteProductB

- (instancetype)init
{
    [NSException raise:[self.class description]
                format:@"Please use Builder category for concrete product B instead"];
    return nil;
}

@end
