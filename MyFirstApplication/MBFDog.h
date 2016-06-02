//
//  MBFDog.h
//  MyFirstApplication
//
//  Created by Fu Juo Wen on 2016/5/29.
//  Copyright © 2016年 ntnu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MBFDog : NSObject{
    NSString *_name;
}


@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)bark;
-(void)barkANumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
