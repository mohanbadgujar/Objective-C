/*
 
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/15/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

  **********Find the Fewest Notes to be returned for Vending Machine***********

 Desc -> There is 1, 2, 5, 10, 50, 100, 500 and 1000 Rs Notes which can be returned by Vending Machine. Write a Program to calculate the minimum number of Notes as well as the Notes to be returned by the Vending Machine as a Change
  I/P -> read the Change in Rs to be returned by the Vending Machine
  Logic -> Use Recursion and check for largest value of the Note to return change to get to minimum number of Notes.
  O/P -> Two Outputs - one the number of minimum Note needed to give the change and second list of Rs Notes that would given in the Change

*/

#import <Foundation/Foundation.h>
#import "vending.h"

@implementation VendingMachine

    int i=0;
    int Rs;

-(void)notesReturn
{
    
    int NSArray[] = {1000,500,100,50,20,10,5,2,1};
    
    //read the Change in Rs to be returned by the Vending Machine
    printf("\nEnter the change Rs :");
    scanf("%d",&Rs);
   
    //Use Recursion and check for largest value of the Note to return change to get to minimum number of Notes.
    while(Rs>0)
    {
        int count=0;
        
        while(NSArray[i]<=Rs && Rs!=0)
        {
            Rs = Rs-NSArray[i];
            count++;
        }
        
        if(count>0)
        {
        printf("Minimum Note needed to give the change :%d \nRs Notes that would given in the Change =%d\n",count,NSArray[i]);
        
        //printf("RS=%d\n",Rs);
        }
        i++;
    }
}
@end
