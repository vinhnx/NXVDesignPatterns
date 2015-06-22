//
//  NXVElementInitialization.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVElementInitialization.h"

@implementation NXVElementInitialization

@synthesize element = _element;

- (NXVElement *)element
{
    if (!_element) {
        _element = [NXVElement new];
    }
    
    return _element;
}

@end
