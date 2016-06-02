//
//  ViewController.m
//  MyFirstApplication
//
//  Created by Fu Juo Wen on 2016/5/29.
//  Copyright © 2016年 ntnu. All rights reserved.
//

#import "ViewController.h"
#import "MBFDog.h"
#import "MBFPuppy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"hello test log");
    
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.image = [UIImage imageNamed:@"dog.jpg"];

    
   // NSLog(@"My dog is named %@ and its' age is %i the breed is %@", myDog.name, myDog.age,myDog.breed);
    //myDog = nil;
    
    //[myDog bark];
    //[myDog barkANumberOfTimes:3];
    //[self printHelloWorld];
    //[myDog barkANumberOfTimes:3 loudly:NO];
    //NSLog(@"%i", [myDog ageInDogYearsFromAge:myDog.age]);
    
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    myDog.name = @"Wishbone";
    myDog.breed = @"Jack Russell Terrier";
    myDog.image = [UIImage imageNamed:@"dog2.jpg"];

    MBFDog *thirdDog = [[MBFDog alloc] init];
    myDog.name = @"Lassie";
    myDog.breed = @"Collie";
    myDog.image = [UIImage imageNamed:@"dog3.jpg"];

    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc]init];
    [littlePuppy givePuppyEyes];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"PP";
//    myDog.image = [UIImage imageNamed:@"puppy.jpg"];

//    [self.myDogs addObject:littlePuppy];
//    
//    NSString *myString = @"this is a NSString";
//    NSArray *wordsInSentence = [myString componentsSeparatedByString:@" "];
//    NSLog(@"%@", wordsInSentence);
//    
//    NSMutableArray *capitalizedWords = [[NSMutableArray alloc] init];
//    
//    for(int word = 0; word < [wordsInSentence count]; word++){
//        NSString *uncapitalizedWord = [wordsInSentence objectAtIndex:word];
//        NSString *capitalizedWord = [uncapitalizedWord capitalizedString];
//        [capitalizedWords addObject:capitalizedWord];
//    }
//    NSLog(@"%@", capitalizedWords);
//    
//    for(NSString *word in wordsInSentence){
//        NSString *capitalizedWord = [word capitalizedString];
//        [capitalizedWords addObject:capitalizedWord];
//    }
//    NSLog(@"%@", capitalizedWords);
    
//    MBFDog *dog = [[MBFDog alloc] init];
//    [dog setName:@"Sparky"];
//    NSLog(@"%@", [dog name]);
    
    NSString *firstString = @"First String";
    NSString *secondString = @"Second String";
    
    NSArray *myArray = [[NSArray alloc] initWithObjects:firstString, secondString, nil];
    NSLog(@"%@", myArray); //cannot change since init
    
    NSMutableArray *myMutableArray = [[NSMutableArray alloc] init];
    [myMutableArray addObject:firstString];
    [myMutableArray addObject:secondString];
    NSLog(@"%@", myMutableArray);
    
    CGPoint myPoint = CGPointMake(3, 3);
    NSLog(@"%f %f", myPoint.x, myPoint.y);
    
    //47-76

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"didReceiveMemoryWarning method is evaluating");

}

- (IBAction)buttonPressed:(UIButton *)sender {
    self.titleLabel.text = self.textField.text;
    [self.textField resignFirstResponder]; //press button then keyboard go away (method)
}

-(void)printHelloWorld
{
    NSLog(@"Hello world!");

}
- (IBAction)newDogBarButtonItemPress:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
//    self.myImageView.image = randomDog.image;
//    self.breedLabel.text = randomDog.breed;
//    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    }completion:^(BOOL finished){
        
    }];
    
    sender.title = @"And Anthor";
}

@end
