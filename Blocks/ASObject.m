//
//  ASObject.m
//  Blocks
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASObject.h"

@implementation ASObject

- (void)dealloc
{
    NSLog(@"ASObject is dealloc");
}

-(void) testMethod :(Block) block{
    block();
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak ASObject * weakSelf = self;
        self.name = @"roman";
        self.objBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}
@end