//
//  NXVAbstraction.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXVImplementor.h"

@interface NXVAbstraction : NSObject

@property (nonatomic, assign) id<NXVImplementor> implementor;

- (void)doSomething:(NSString *)command;
- (void)performFirstAction;
- (void)performSecondAction;

@end
