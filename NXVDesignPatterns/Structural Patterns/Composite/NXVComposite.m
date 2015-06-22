//
//  NXVComposite.m
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import "NXVComposite.h"

@interface NXVComposite ()
@property (nonatomic, strong) NSMutableArray *childs;
@end

@implementation NXVComposite

#pragma mark - NXVComposite Protocol

- (void)doSomething
{
    // do something
}

- (BOOL)didAddChild:(id<NXVComponent>)child
{
    if ([self.childs containsObject:child]) {
        return NO;
    }
    
    [self.childs addObject:child];
    return YES;
}

- (BOOL)didRemoveChild:(id<NXVComponent>)child
{
    if ([self.childs containsObject:child]) {
        [self.childs removeObject:child];
        return YES;
    }
    
    return NO;
}

- (NSUInteger)totalChilds
{
    return self.childs.count;
}

- (id<NXVComponent>)childAtIndex:(NSUInteger)index
{
    return self.childs[index];
}

- (BOOL)isComposite
{
    return YES;
}

#pragma mark - Private

- (NSMutableArray *)childs
{
    if (!_childs) {
        _childs = [NSMutableArray new];
    }
    
    return _childs;
}

@end
