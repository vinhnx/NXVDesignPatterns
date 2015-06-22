//
//  NXVConcreteProduct.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NXVConcreteBuilder;
@interface NXVConcreteProduct : NSObject

@property (nonatomic, assign, readonly) NSInteger foo; // required
@property (nonatomic, assign, readonly) NSInteger bar; // optional
@property (nonatomic, assign, readonly) NSInteger baz; // optional

- (instancetype)initWithConcreteBuilder:(NXVConcreteBuilder *)builder;

@end
