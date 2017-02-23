/*
  InsertionSort -

  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/8/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

 ****************Insertion Sort********************
 Desc -> Reads in strings from standard input and prints them in sorted order.
 Uses insertion sort.
 I/P -> read in the list words
 Logic -> Use Insertion Sort to sort the words in the String array
 O/P -> Print the Sorted List

*/
#import <Foundation/Foundation.h>
#import "insertion.h"

@implementation InsertionSort

-(void)InsertionSortString{
    int max;
    char character[20];
    int i;
    
    NSLog(@"Enter the no of strings u want to insert=");
    scanf("%d",&max);
    
    NSString *string[max];
    
    printf("\nEnter %d strings:\n",max);
    for (i=0; i<max; i++)
    {
        scanf("%s",character);
        NSString *str=[NSString stringWithFormat:@"%s",character];
        string[i]=str;
    }
    
    NSComparisonResult result;
    
    for(i=0;i<max;i++)
    {
        NSString *key1=string[i];
        
        int j=i-1;
        
        while (j>=0)
        {
        result=[key1 compare:string[j]];
          
            if (result>0)
        //    if([string[i] compare:string[j]] >0)
            {
                break;
            }
            string[j+1]=string[j];
            j--;
        }
        string[j+1]=key1;//string[i];
    }
    
    printf("\nSorted Array:\n");
    for (i=0; i<max; i++)
    {
        NSLog(@"%@\t",string[i]);
    }
}
@end
