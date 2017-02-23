/*
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/20/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

 *****************Hashing Function to search a Number in a slot*******************
 Desc -> Create a Slot of 10 to store Chain of Numbers that belong to each Slot to efficiently search a number from a given set of number
 I/P -> read a set of numbers from a file and take user input to search a number
 Logic -> Firstly store the numbers in the Slot. Since there are 10 Numbers divide each number by 11 and the reminder put in the appropriate slot. Create a Chain for each Slot to avoid Collision. If a number searched is found then pop it or else push it. Use Map of Slot Numbers and Ordered LinkedList to solve the problem. In the Figure Below, you can see number 77/11 reminder is 0 hence sits in the 0 slot while 26/11 remainder is 4 hence sits in slot 4
 O/P -> Save the numbers in a file

 */
#import <Foundation/Foundation.h>
#import "hashing.h"

@implementation Hashing
// read a set of numbers from a file
-(void)readNumber
{
    NSString *file=@"/Users/bridgelabz/Desktop/ios/Hashing/Hashing/File";
    
    NSError *error;
    NSString *content=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    linklist=(NSMutableArray*)[content componentsSeparatedByString:@"\n"];
    //linklist1 = (NSMutableArray*)[content componentsSeparatedByString:@"\n"];
    // linklist1 = [[NSMutableArray alloc]initWithObjects:@"first",@"last", nil];
   
    
    /* linklist1 = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [linklist count];i++)
    {
        [linklist1 insertObject:@"NULL" atIndex:i];
    }
*/
    for(int i=0;i<[linklist count];i++)
    {
        arr[i]=0;
    }
    
    [linklist removeLastObject];
    [self display];
    [self display1];
}

//take user input to search a number
-(void)getInput
{
    
    printf("Enter any number you want to add or remove from list=");
    scanf("%d",&num);
    
    //printf("-----------------------------------------------------\n");
    //[self addremove];
    //printf("-----------------------------------------------------\n");
}

//If a number searched is found then pop it or else push it.
-(void)addremove
{
    NSString *number = [NSString stringWithFormat:@"%d",num];
    if([linklist containsObject:number])
    printf("Element allready present in a hashtable...\n");
    else
    {
        [linklist addObject:number];
       // printf("count=%lu",(unsigned long)[linklist count]);
        [self display];
    }
}
-(void)putAccordingRemainder
{
    for(int i=0;i<[linklist count];i++)
    {
        int rem = [[linklist objectAtIndex:i]intValue]%11;
        printf("Remainder is=%d",rem);
        //[linklist1 insertObject:[NSString stringWithFormat:@"%d",[[linklist objectAtIndex:i]intValue]] atIndex:rem];
        //[self display1];
        arr[rem] =[[linklist objectAtIndex:i]integerValue];
        [self display1];
    }
}
-(void)search
{
    int searchnum;
    printf("Enter number you want to search=");
    scanf("%d",&searchnum);
    int searchrem=searchnum%11;
    printf("No is found at: %d\n",searchrem);
    
}


-(void)display
{
    printf("\nHashtable");
    printf("\n--------------------------------------------------------------------------------------\n");
    for (int i=0; i<[linklist count]; i++)
    {
        printf("\t%d->",i);
        printf("\t%d |",[[linklist objectAtIndex:i]intValue]);
    }
    printf("\n-------------------------------------------------------------------------------------\n");
}
-(void)display1
{
    printf("\nHashtable");
    printf("\n-----------------------------------------------------------------------------------\n");
    for (int i=0; i<[linklist count]; i++)
    {
        printf("\t%d->",i);
     //   printf("\t%d |",[[linklist1 objectAtIndex:i]intValue]);
        printf("\t%d |",arr[i]);
    }
    printf("\n------------------------------------------------------------------------------------\n");
}
@end
