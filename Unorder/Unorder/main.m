/*
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/15/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

 ****************UnOrdered List********************
 
 Desc -> Read the Text from a file, split it into words and arrange it as Linked List. Take a user input to search a Word in the List. If the Word is not found then add it to the list, and if it found then remove the word from the List. In the end save the list into a file
 I/P -> Read from file the list of Words and take user input to search a Text
 Logic -> Create a Unordered Linked List. The Basic Building Block is the Node Object. Each node object must hold at least two pieces of information. One ref to the data field and  second the ref to the next node object.
 O/P -> The List of Words to a File.

 */

#import <Foundation/Foundation.h>
#import "unorder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UnOrderedList *un = [[UnOrderedList alloc]init];

        [un readInfo];
        [un Display];
        [un getInput];
        [un addremove];

        
        
    }
    return 0;
}
