//
//  balance.m
//  Balance
//
//  Created by BridgeLabz Solutions LLP  on 2/14/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "balance.h"

@implementation Balance
int count1=0;

-(void)push:(NSMutableArray *)stack :(NSString *)char1;
{
    [stack addObject:char1];
    count1++;
    NSLog(@"after push is=%@\n",stack);
    printf("push count=%d\n",count1);
}

-(void)pop:(NSMutableArray *)stack :(NSString *)char1;
{
    [stack removeLastObject];
    count1--;
    NSLog(@"stack after pop is=%@\n",stack);

    printf("pop count=%d\n",count1);
}

-(void)isEmpty;
{
    printf("is empty count=%d\n",count1);
    if(count1==0)
        printf("Expression is balance\n");
    else
        printf("Expression is not balance\n");
}
@end
