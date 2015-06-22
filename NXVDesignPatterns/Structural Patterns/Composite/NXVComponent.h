//
//  NXVComposite.h
//  NXVDesignPatterns
//
//  Created by Vinh Nguyen on 22/06/2015.
//  Copyright (c) Năm 2015 Vinh nguyen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NXVComponent <NSObject> // NOTE: composite: hon hop

@required

- (void)doSomething;

- (BOOL)didAddChild:(id<NXVComponent>)child;
- (BOOL)didRemoveChild:(id<NXVComponent>)child;

- (NSUInteger)totalChilds;
- (id<NXVComponent>)childAtIndex:(NSUInteger)index;
- (BOOL)isComposite;

@end
