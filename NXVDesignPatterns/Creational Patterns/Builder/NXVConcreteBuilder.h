//
//  NXVConcreateBuilder.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXVConcreteProduct.h"

@interface NXVConcreteBuilder : NSObject

@property (nonatomic, assign) NSInteger foo;
@property (nonatomic, assign) NSInteger bar;
@property (nonatomic, assign) NSInteger baz;

- (instancetype)initWithFoo:(NSInteger)foo;
- (instancetype)withBar:(NSInteger)bar;
- (instancetype)withBaz:(NSInteger)baz;

- (NXVConcreteProduct *)build;

@end
