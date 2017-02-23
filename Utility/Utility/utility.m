//
//  utility.m
//  Utility
//
//  Created by BridgeLabz Solutions LLP  on 2/10/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "utility.h"

@implementation Utility

-(void)GetInputInt
{
    //int n;
   // NSLog(@"\nEnter the no of element you want to insert=");
   // scanf("%d",&n);
    //int arr[n];
    
    printf("Enter %d elements:",n);
    for(int i=0;i<n;i++)
    {
        scanf("%d",&arr[i]);
    }
}
-(void)GetInputStr
{
   
}

-(void)BinarySearchInteger
{
    [self BubbleSortInteger];
    
    int item;//,n,arr[n];
        NSLog(@"\nEnter the element you want to search=");
        scanf("%d",&item);
        
        int start=0;
        int end=n-1;
        int middle=(start+end)/2;
        
        while(item!=arr[middle] && start<=end)
        {
            if(item>arr[middle])
                start = middle+1;
            else
                end = middle-1;
            
            middle = (start+end)/2;
        }
        
        if(item==arr[middle])
            NSLog(@"Element found at index :%d",(middle+1));
        else
            NSLog(@"Element not found...");
}



-(void)BinarySearchString
{
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
                //if([string[i] compare:string[j]] >0)
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
    
    char character1[20];
    NSLog(@"\nEnter the string you want to search=");
    scanf("%s",character1);
    NSString *item=[NSString stringWithFormat:@"%s",character1];
   // string[i]=str;
    
    int start=0;
    int end=max-1;
    int middle=(start+end)/2;
    
    while(item!=string[middle] && start<=end)
    {
        if(item>string[middle])
            start = middle+1;
        else
            end = middle-1;
        
        middle = (start+end)/2;
    }
    
    if(item==string[middle])
        NSLog(@"Element found at index :%d",(middle+1));
    else
        NSLog(@"Element not found...");


  /*  NSLog(@"Enter the name u want to search:");
    scanf("%s",searchkey);
    
    int low = 0;
    int high = max;
    int middle=(low+high)/2;
    
    while(searchkey!=string[middle] && low<=high)
    {
    if(searchkey>string[middle])
        low=low+1;
        else
        high=high+1;
        
        middle=(low+high)/2;
    }
    */
          

}
-(void)InsertionSortInteger
{
    for(int i=0;i<n-1;i++)
    {
        for(int j=i;j>=0;j--)
        {
        if(arr[j]>arr[j+1])
        {
            int temp=arr[j];
            arr[j]=arr[j+1];
            arr[j+1]=temp;
        }
        }
    }
    for(int i=0;i<n;i++)
        printf("%d\t",arr[i]);
}
-(void)InsertionSortString
{
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
                //if([string[i] compare:string[j]] >0)
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

-(void)BubbleSortInteger
{
    /*int n;
    int input;
    NSLog(@"Enter the no of element you want to insert=");
    scanf("%d",&n);
    int arr[n];
    NSLog(@"Enter Elements:");
    for(int i=0;i<n;i++)
    {
        scanf("%d",&input);
        arr[i]=input;
    }*/
    //int n,arr[n];
    for(int pass=1;pass<=n-1;pass++)
    {
        for(int i=0;i<n-pass;i++)
        {
            if(arr[i]>arr[i+1])
            {
                int temp=arr[i];
                arr[i]=arr[i+1];
                arr[i+1]=temp;
            }
        }
    }
    NSLog(@"\nSorted element are=");
    for(int i=0;i<n;i++)
    {
        NSLog(@"%d",arr[i]);
    }
}
    

-(void)BubbleSortString
{
    char character[20];
    NSComparisonResult result;
    NSString *string[n];
    int i,j;
    NSString *temp;
    printf("\nEnter 6 strings:\n");
    for (i=0; i<n; i++)
    {
        scanf("%s",character);
        NSString *str=[NSString stringWithFormat:@"%s",character];
        string[i]=str;
    }
    
    for(i=0;i<n-1;i++)
    {
        for(j=0;j<n-i-1;j++)
        {
            result=[string[j] compare:string[j+1]];
            if(result>0)                    //string[j]>string[j+1]
            {
                temp=string[j];
                string[j]=string[j+1];
                string[j+1]=temp;
            }
        }
    }
    
    printf("\nSorted String Array:\n");
    for (i=0; i<n; i++) {
        NSLog(@"%@\t",string[i]);
    }
}

@end
