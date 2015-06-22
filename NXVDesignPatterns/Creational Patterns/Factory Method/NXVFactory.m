//
//  NXVFactory.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVFactory.h"
#import "NXVProductA.h"
#import "NXVProductB.h"

@implementation NXVFactory

+ (id<NXVProductProtocol>)productWithType:(NXVProductType)productType
{
    switch (productType) {
        case NXVProductTypeA: {
            return [self productA];
            break;
        }
        case NXVProductTypeB: {
            return [self productB];
            break;
        }
        default: {
            return nil;
            break;
        }
    }
}

+ (NXVProductA *)productA
{
    return [NXVProductA new];
}

+ (NXVProductB *)productB
{
    return [NXVProductB new];
}

@end
