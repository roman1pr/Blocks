//
//  AppDelegate.m
//  Blocks
//
//  Created by Роман Приискалов on 29/03/15.
//  Copyright (c) 2015 Роман Приискалов. All rights reserved.
//

#import "AppDelegate.h"
#import "ASObject.h"

typedef void(^OurTestBlock)(void);
typedef NSString* (^OurTestBlock2)(NSInteger);

@interface AppDelegate ()

@property(copy, nonatomic) OurTestBlock block;
@property(strong, nonatomic) NSString* name;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
   /*
    [self test];
    void (^testBlock)(void);
    testBlock = ^{
        NSLog(@"testBlock");
    };
    
    void (^testBlockWithParams)(NSString*, NSInteger*) = ^(NSString* string, NSInteger * intValue){
        NSLog(@"%@ %d", string, intValue);
    };
    
    testBlockWithParams(@"dwrv", 34);
    testBlock();
    testBlock();
    
    
    
    NSString* (^testBlockWithReturnValue)(NSString*) = ^(NSString* string){
        return [NSString stringWithFormat:@"returns string %@", string];
    };
    
    testBlockWithReturnValue(@"234");
    
  
    
    
    NSString* str = @"secret";
    
    __block NSInteger sum = 0; // for changing value in block use __block
    
    void (^printAndSet)(void);
    
    printAndSet = ^{
        sum++;
        NSLog(@"i know your %@ %ld times", str, (long)sum);
    };
    
    printAndSet();
    
    [self testBlockMethod:^{
        NSLog(@"Ahtung!");
    }];
    
    NSComparisonResult (^compare)(id, id) = ^(id obj1, id obj2){ //compare block
        return NSOrderedAscending;
    };
    
    NSArray* ar = nil;
    [ar sortedArrayUsingComparator:compare]; // using our comparator
    
    OurTestBlock testblock2 = ^{
        
    };
    
    OurTestBlock2 testblock3 = ^(NSInteger value){
        return [NSString stringWithFormat:@"string from my Ourtestblock2 %ld", (long)value ];
    };
    
    NSString * ans = testblock3(4);
    NSLog(@"%@", ans); 
    
    testblock2();
    
    
    ASObject* obj = [[ASObject alloc] init];
    
    __weak ASObject* obj1 = obj; // чтобы удалилось после исполнения в блоке
    obj.name = @"Roma";
    
    OurTestBlock temp = ^{
        obj.name = @"denis";
        NSLog(@"%@", obj1.name);
    };
    
    self.block = temp;
    
    self.block();
      */
    
    ASObject* obj = [[ASObject alloc] init];
    obj.objBlock();
    obj.name = @"obj";
    obj.objBlock();
    self.name = @"app";
    obj.objBlock();
    
    /*
    [obj testMethod:^{
        NSLog(@"my name %@", self.name); // self относится к appdelegate
    }];
     */
    
    return YES;
}

- (void) test {
    NSLog(@"test");
}

- (void) testBlockMethod: (void (^)(void)) block {
    NSLog(@"TestBlockMethod");
    block();
}

- (void) testBlockMethod2: (void (^)(void)) block {
    NSLog(@"TestBlockMethod");
    block();
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
