/*
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/10/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

  ************Utility Class*************
  Desc -> Create Utility Class having following methods
  
  - binarySearch method for integer
  - binarySearch method for String
  - insertionSort method for integer
  - insertionSort method for String
  - bubbleSort method for integer
  - bubbleSort method for String
  
  I/P -> Write main function to call the utility function
  Logic -> Check using Stopwatch the Elapsed Time for every method call
  O/P -> Output the Search and Sorted List. More importantly print elapsed time performance in descending order
*/

#import <Foundation/Foundation.h>
#import "utility.h"

int main(int argc, const char * argv[])
{
    {
        
        int choice;
        printf("*****************Menu********************");
        printf("\n1.Binary Search Using Integer\n2.Binary Search Using String\n3.Insertion Sort Using Integer\n4.Insertion Sort Using String\n5.Bubble Sort Using Interger\n6.Bubble Sort Using String\n7.Exit");
        printf("\nPlase Enter your choice:");
        scanf("%d",&choice);
        
        Utility *u = [[Utility alloc]init];
        
            switch(choice)
               {
                   case 1:
                       [u GetInputInt];
                       [u BinarySearchInteger];
                       break;
                   case 2:
                       [u BinarySearchString];
                       break;
                   case 3:
                       [u GetInputInt];
                       [u InsertionSortInteger];
                       break;
                   case 4:
                       [u InsertionSortString];
                       break;
                   case 5:
                       [u GetInputInt];
                       [u BubbleSortInteger];
                       break;
                   case 6:
                       [u BubbleSortString];
                       break;
                   case 7:
                       break;
               }
         }
    return 0;
}
