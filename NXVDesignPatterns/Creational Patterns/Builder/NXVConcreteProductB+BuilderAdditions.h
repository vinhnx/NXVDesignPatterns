//
//  NXVConcreteProductB+BuilderAdditions.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVConcreteProductB.h"

@interface NXVConcreteProductB (BuilderAdditions)

- (instancetype)initWithFoo:(NSInteger)foo;
- (instancetype)withBar:(NSInteger)bar;
- (instancetype)withBaz:(NSInteger)baz;

@end
