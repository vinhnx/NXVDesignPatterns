//
//  NXVLeaf.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVLeaf.h"

@implementation NXVLeaf

- (void)doSomething
{
    // do something
}

- (BOOL)didAddChild:(id<NXVComponent>)child
{
    return NO;
}

- (BOOL)didRemoveChild:(id<NXVComponent>)child
{
    return NO;
}

- (NSUInteger)totalChilds
{
    return 0;
}

- (id<NXVComponent>)childAtIndex:(NSUInteger)index
{
    return nil;
}

- (BOOL)isComposite
{
    return NO;
}

@end
