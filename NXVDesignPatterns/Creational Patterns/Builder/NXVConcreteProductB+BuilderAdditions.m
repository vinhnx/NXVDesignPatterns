//
//  NXVConcreteProductB+BuilderAdditions.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteProductB+BuilderAdditions.h"

@implementation NXVConcreteProductB (BuilderAdditions)

- (instancetype)initWithFoo:(NSInteger)foo
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.foo = foo;
    
    return self;
}

- (instancetype)withBar:(NSInteger)bar
{
    self.bar = bar;
    return self;
}

- (instancetype)withBaz:(NSInteger)baz
{
    self.baz = baz;
    return self;
}

@end
