//
//  MBFDog.m
//  MyFirstApplication
//
//  Created by Fu Juo Wen on 2016/5/29.
//  Copyright © 2016年 ntnu. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes:(int)numberOfTimes
{
    for(int bark = 1; bark <= numberOfTimes; bark++){
        [self bark];
    }
}
-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if(!isLoud){
        for(int bark = 1; bark <= numberOfTimes; bark++){
            NSLog(@"Yip Yip!");
        }
    }
    else{
        [self barkANumberOfTimes:numberOfTimes];
    }
}
-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return  newAge;
}



@end
