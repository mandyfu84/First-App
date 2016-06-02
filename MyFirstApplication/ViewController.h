//
//  ViewController.h
//  MyFirstApplication
//
//  Created by Fu Juo Wen on 2016/5/29.
//  Copyright © 2016年 ntnu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)buttonPressed:(UIButton *)sender;

/*MBF tutorial*/
-(void)printHelloWorld;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
- (IBAction)newDogBarButtonItemPress:(UIBarButtonItem *)sender;

@end

