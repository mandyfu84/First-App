//
//  MBFPuppy.m
//  MyFirstApplication
//
//  Created by Fu Juo Wen on 2016/6/2.
//  Copyright © 2016年 ntnu. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy
-(void)givePuppyEyes{
    NSLog(@":(");
}
-(void)bark{
    //[super bark]; //do upper thing
    NSLog(@"whimper whimper");
    [self givePuppyEyes];
}
@end
