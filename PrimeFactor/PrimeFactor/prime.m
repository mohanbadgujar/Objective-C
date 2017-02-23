/*
    PrimeFactor
  
    Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/7/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

    ******************Problem Statement - Factors******************
    
    Desc -> Computes the prime factorization of N using brute force.
    I/P -> Number to find the prime factors
    Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
    O/P -> Print the prime factors of number N.

*/
#import <Foundation/Foundation.h>
#import "prime.h"

@implementation PrimeFactor

-(void)GetInput{
    NSLog(@"\nEnter the number for which you want prime factor=");
    scanf("%d",&num);
}
-(void)Calculate{
    NSLog(@"Prime factors are:");
    for(int i=2;i<=num;i++)
    {
        while(num%i==0)
        {
            num = num/i;
            NSLog(@"%d",i);
        }
    }
}


@end
