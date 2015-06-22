//
//  NXVConcreateBuilder.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteBuilder.h"
#import "NXVConcreteBuilder.h"

@implementation NXVConcreteBuilder

- (instancetype)initWithFoo:(NSInteger)foo
{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    _foo = foo;
    
    return self;
}

- (instancetype)withBar:(NSInteger)bar
{
    _bar = bar;
    return self;
}

- (instancetype)withBaz:(NSInteger)baz
{
    _baz = baz;
    return self;
}

- (NXVConcreteProduct *)build
{
    return [[NXVConcreteProduct alloc] initWithConcreteBuilder:self];
}

@end
