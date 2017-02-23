/*
    Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/14/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

    *******************Simple Balanced Parentheses********************
    Desc -> Take an Arithmetic Expression such as (5+6)∗(7+8)/(4+3)(5+6)∗(7+8)/(4+3) where parentheses are used to order the performance of operations. Ensure parentheses must appear in a balanced fashion.
    I/P -> read in Arithmetic Expression such as (5+6)∗(7+8)/(4+3)(5+6)∗(7+8)/(4+3)
    Logic -> Write a Stack Class to push open parenthesis “(“ and pop closed parenthesis “)”. At the End of the Expression if the Stack is Empty then the Arithmetic Expression is Balanced. Stack Class Methods are Stack(), push(), pop(), peak(), isEmpty(), size()
    O/P -> True or False to Show Arithmetic Expression is balanced or not.

 */
#import <Foundation/Foundation.h>
#import "balance.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char ex[20];
        printf("\nEnter the expression=");
        scanf("%s",ex);
        NSString *exp = [NSString stringWithFormat:@"%s",ex];
        NSMutableArray *stack =[[NSMutableArray alloc]initWithCapacity:[exp length]];
        //NSLog(@"initial stack is=%@",stack);
        
        Balance *b = [[Balance alloc]init];

        for(int i=0;i<[exp length];i++)
        {
            NSString *char1 =[NSString stringWithFormat:@"%c",[exp characterAtIndex:i]];
            if([char1 isEqualToString:@"("])
            {
                [b push:stack:char1];
                
              //  [stack addObject:char1];
               // count++;
            }else
                if([char1 isEqualToString:@")"])
                {
                   [b pop:stack:char1];
                    //[stack removeObject:char1];
                    //count--;
                }
        }
       
        [b isEmpty];
        
    }
    return 0;
}
