//
//  NXVObjectPool.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NXVReusableObject.h"

@interface NXVObjectPool : NSObject

+ (instancetype)sharedInstance;
- (NXVReusableObject *)acquireReusableObject;
- (BOOL)releaseReusableObject:(NXVReusableObject *)reusableObject;

@end
