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
    
    NSNumber *total = [self sumOfMultiplesBelowNumber:@1000];
    NSLog(@"%@",total);
    
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
        if (i % 15 == 0) {
            sum +=i;
        }
        else if (i % 3 == 0){
            sum +=i;
        }
        else if (i % 5 == 0){
            sum +=i;
        }
    }
    
    return @(sum);
}

@end
