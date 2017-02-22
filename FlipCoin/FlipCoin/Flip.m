/*
  
    FlipCoin -
    
    Created by BridgeLabz Solutions LLP  on 2/6/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

    Problem Statement -
 
    Flip Coin and print percentage of Heads and Tails
    I/P -> The number of times to Flip Coin. Ensure it is positive integer.
    Logic -> Use Random Function to get value between 0 and 1. If < 0.5 then tails or heads
    O/P -> Percentage of Head vs Tails
 
*/
#import <Foundation/Foundation.h>
#import "Flip.h"

@implementation FlipCoin

-(void) flipcheck:(int) no_of_time
{
    head=0;
    tail=0;
    
    
    for(int i=0;i<no_of_time;i++)
    {
        float random = rand()/(float)RAND_MAX;
        NSLog(@"Value of Random=%f",random);
        if(random>0.5)
        head = head+1;
        else
        tail = tail+1;
        
       // float random = rand()/(float)RAND_MAX;
    }
    float headper = ((float)head/no_of_time*100);
    
    float tailper = ((float)tail/no_of_time*100);
    
    NSLog(@"head=%d tail=%d",head,tail);
    NSLog(@"headPercentage=%f tailPercentage=%f",headper,tailper);
}

@end
