/* 
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/14/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
  
  Desc -> Read .a List of Numbers from a file and arrange it ascending Order in a Linked List. Take user input for a number, if found then pop the number out of the list else insert the number in appropriate position
  I/P -> Read from file the list of Numbers and take user input for a new number
  Logic -> Create a Ordered Linked List having Numbers in ascending order.
  O/P -> The List of Numbers to a File.

*/
#import <Foundation/Foundation.h>
#import "ordered.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        OrderedList *or = [[OrderedList alloc]init];
        [or readNumber];
        [or Display];
        [or arrange];
        [or getInput];
       // [or addremove];
        
    }
    return 0;
}
