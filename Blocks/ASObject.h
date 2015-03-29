//
//  ASObject.h
//  Blocks
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^Block)(void);

@interface ASObject : NSObject

@property(strong , nonatomic) NSString* name;

@property(copy, nonatomic) Block objBlock;

-(void) testMethod :(Block) block;

@end