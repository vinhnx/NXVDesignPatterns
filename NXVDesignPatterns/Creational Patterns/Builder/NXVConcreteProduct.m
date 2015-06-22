//
//  NXVConcreteProduct.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteProduct.h"
#import "NXVConcreteBuilder.h"

@implementation NXVConcreteProduct

- (instancetype)init
{
    [NSException raise:[self.class description]
                format:@"Please use NXVConcreteBuilder instead"];
    return nil;
}

- (instancetype)initWithConcreteBuilder:(NXVConcreteBuilder *)builder
{
    self = [super init];
    if (!self) {
        return nil;
    }

    _foo = builder.foo;
    _bar = builder.bar;
    _baz = builder.baz;
    
    return self;
}

@end
