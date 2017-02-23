//
//  findnumber.m
//  FindNumber
//
//  Created by BridgeLabz Solutions LLP  on 2/13/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "findnumber.h"

@implementation FindNumber
-(void)GetInput
{
    int n;
    
    //Take higest value from user
    NSLog(@"Enter the highest value=");
    scanf("%d",&n);
    
    //asks you to think of a number between 0 and N-1
    NSLog(@"Think number between 0 to %d",n-1);
    [self findNumber:n];
    
}
-(void)findNumber:(int)n
{
    int arr[n-1];
    int start;
    int end;
    int middle;
    char replay[10];
    int imagin;
    for(int i=0;i<n;i++)
    {
        arr[i]=i;
       // printf("%d\n",arr[i]);
    }
    start=0;
    end=n-1;
    middle=(start+end)/2;
    
    printf("Enter the number you imagin=");
    scanf("%d",&imagin);
    
    
    // recursively ask true/false if the number is between a high and low value
    // Use Binary Search to find the number
    while(imagin!=middle && start<end)
    {
        printf("Is your number is Greaterthan %d\n",middle);
        scanf("%s",replay);
        
       if(strcmp(replay, "yes")==0)
        {

            if(imagin>arr[middle])
            start = middle+1;
       
            middle = (start+end)/2;
        }else
        if(imagin<arr[middle])
        {
            end = middle-1;
            middle =(start+end)/2;
        }
        
        //Print the intermediary number and the final answer
        if(imagin==arr[middle])
        printf("your imagin number is=%d\n",middle);
    }
}
@end
