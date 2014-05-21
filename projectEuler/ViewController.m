//
//  ViewController.m
//  projectEuler
//
//  Created by Danny on 5/20/14.
//  Copyright (c) 2014 Danny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Question 1
    NSNumber *total = [self sumOfMultiplesBelowNumber:@1000];
    NSLog(@"Question 1: %@",total);
    
    //Question 2
    NSNumber *sum = [self sumOfFibNumbersLessThanNumber:@4000000];
    NSLog(@"Question 2: %@", sum);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Question 1

- (NSNumber *)sumOfMultiplesBelowNumber:(NSNumber *)number{
    NSInteger sum =0;
    
    for (NSInteger i=0; i<[number integerValue]; i++) {
        if (i % 3 == 0 || i % 5 ==0) {
            sum += i;
        }
    }
    
    return @(sum);
}

//Question 2
- (NSNumber *)sumOfFibNumbersLessThanNumber:(NSNumber *)number{
    NSInteger sum = 0;
    
    NSInteger lastNumber = 0;
    NSInteger lastLastNumber = 1;
    
    for (NSInteger i = lastNumber; i < [number integerValue]; i++) {
        i = lastNumber + lastLastNumber;
        lastNumber = lastLastNumber;
        lastLastNumber = i;
        
        if(i % 2 == 0){
            sum +=i;
        }
    }
    return @(sum);
}

@end
