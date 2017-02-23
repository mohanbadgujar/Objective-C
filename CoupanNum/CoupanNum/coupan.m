/*
    CoupanNum -

    Created by BridgeLabz Solutions LLP  on 2/8/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
    **********************Problem Statement - Coupon Numbers*************************
    Desc -> Given N distinct Coupon Numbers, how many random numbers do you need to generate distinct coupon number? This program simulates this random process.
    I/P -> N Distinct Coupon Number
    Logic -> repeatedly choose a random number and check whether it's a new one.
    O/P -> total random number needed to have all distinct numbers.
    Functions => Write Class Static Functions to generate random number and to process distinct coupons.
*/

#import <Foundation/Foundation.h>
#import "coupan.h"
@implementation CoupanNum

static int no_of_coupan;
static float random1;
static int temp;

-(void)GetInput
{
    NSLog(@"Enter the number of coupan number you want=");
    scanf("%d",&no_of_coupan);
}
+(void)Generate{
    temp=no_of_coupan;
    for(int i=0;i<no_of_coupan;i++)
    {
        random1 = rand()/(float)temp;
        NSLog(@"Random numbers are=%f",random1);
    }
    
}
@end
