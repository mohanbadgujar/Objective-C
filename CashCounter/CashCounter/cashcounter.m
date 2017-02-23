/*
 Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/7/17.
 Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
 
 ******************Simulate Banking Cash Counter*****************
 Desc -> Create a Program which creates Banking Cash Counter where people come in to deposit Cash and withdraw Cash. Have an input panel to add people to Queue to either deposit or withdraw money and dequeue the people. Maintain the Cash Balance.
 I/P -> Panel to add People to Queue to Deposit or Withdraw Money and dequeue
 Logic -> Write a Queue Class to enqueue and dequeue people to either deposit or withdraw money and maintain the cash balance
 O/P -> True or False to Show Arithmetic Expression is balanced or not.

*/

#import <Foundation/Foundation.h>
#import "cashcounter.h"

@implementation CashCounter

-(void)enqueue:(int)people
{
    if(itemcount==people)
        printf("Queue is Full");
    else
    {
       for(int i=1;i<=people;i++)
       {
        rear = rear+1;
        array[rear] = rear;
        printf("\nInserted successfully at %d",rear);
        itemcount++;
        printf("\nItem count=%d",itemcount);
        printf("\nrear%d \nNo of People in queue =%d\n",rear,rear);
       }
        [self queue];
    }
}
-(void)queue
{
  /*  for(int i=front;i<rear;i++)
    {
        printf("\nElement in Queue=%d array value=%d",i+1,array[i+1]);
    }*/
    
    printf("\n--------------------------------------");
    printf("\nQueue :");
    for (int i=front; i<rear; i++)
    {
        printf("\t%d",array[i+1]);
    }
    printf("\n--------------------------------------");
}

-(void)dequeue
{
    if(itemcount==1)
    {
    printf("\n**********Queue is empty***********\n");
    exit(0);
    }
    else
    {
        front++;
        itemcount--;
        [self queue];
    }
}

/*-(BOOL)isEmpty:(int)itemcount
{
if(itemcount==0)
    return 1;
    else
    return 0;
}

-(BOOL)isFull:(int)itemcount:(int)people
{
if(itemcount==people)
    return 1;
    else
    return 0;
}*/


@end
