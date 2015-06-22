//
//  NXVAbstractFactory.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXVAbstractProductA.h"
#import "NXVAbstractProductB.h"

@protocol NXVAbstractFactory <NSObject>

@required

- (id<NXVAbstractProductA>)createProductA;
- (id<NXVAbstractProductB>)createProductB;

@end
