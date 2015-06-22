//
//  NXVDecorator.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVDecorator.h"

@interface NXVDecorator ()
@property (nonatomic, assign) id<NXVComponent> decoratedComponent;
@end

@implementation NXVDecorator

- (instancetype)initWithDecoratedComponent:(id<NXVComponent>)component
{
    self = [super init];
    if (!self) return nil;
    
    self.decoratedComponent = component;
    
    return self;
}

- (void)doSomething
{
    [self.decoratedComponent doSomething];
}

@end
