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
    
    //Question 3
    NSLog(@"Questin 3: %lld",[self largestPrimeOfNumber:600851475143]);
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

//Question 3
- (long long)largestPrimeOfNumber:(long long)number{
    long long largestPrime = 1;
    
    if (number % 2 ==0) {
        largestPrime = 2;
        number = number/2;
    }
    for (long long i =3; i<=number; i+=2) {
        if (number % i == 0) {
            largestPrime = i;
            number = number/i;
        }
    }
    return largestPrime;
}


@end
