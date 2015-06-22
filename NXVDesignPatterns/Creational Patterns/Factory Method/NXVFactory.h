//
//  NXVFactory.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NXVProductProtocol;
@class NXVProductA;
@class NXVProductB;

typedef NS_ENUM(NSInteger, NXVProductType) {
    NXVProductTypeA,
    NXVProductTypeB
};

@interface NXVFactory : NSObject

+ (id<NXVProductProtocol>)productWithType:(NXVProductType)productType;
+ (NXVProductA *)productA;
+ (NXVProductB *)productB;

@end
