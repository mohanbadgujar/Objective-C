/*
    Triples -
    Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/10/17.
    Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
    
 ********************Problem Statement :- Sum of three Integer adds to ZERO****************
 Desc -> A program with cubic running time. Read in N integers and counts the   number of triples that sum to exactly 0.
 I/P -> N number of integer, and N integer input array
 Logic -> Find distinct triples (i, j, k) such that a[i] + a[j] + a[k] = 0
 O/P -> One Output is number of distinct triplets as well as the second output is to print the distinct trniplets.
*/

#import <Foundation/Foundation.h>
#import "triples.h"

@implementation Triples
-(void)Check:(int)n
{
    int arr[n];
    int input;
    int count=0;
    
    for(int i=0;i<n;i++)
    {
        NSLog(@"enter the intergers:");
        scanf("%d",&input);
        arr[i] = input;
    }
    for(int i=0;i<n-2;i++)
    {
        for(int j=i+1;j<n-1;j++)
        {
            for(int k=j+1;k<n;k++)
            {
            if(arr[i]+arr[j]+arr[k]==0)
                {
                NSLog(@"Triples are:%d %d %d",arr[i],arr[j],arr[k]);
                count++;
                }
            }
        }
    }
    NSLog(@"No of Triples are:%d",count);
}

@end
