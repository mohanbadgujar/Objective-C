/*
  FindNumber -
  Created by BridgeLabz Solutions LLP  on 2/13/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
    
 ***********************Question to find your number**************************
 Desc -> takes a command-line argument N, asks you to think of a number between 0 and N-1, where N = 2^n, and always guesses the answer with n questions.
 I/P -> the Number N and then recursively ask true/false if the number is between a high and low value
 Logic -> Use Binary Search to find the number
 O/P -> Print the intermediary number and the final answer

*/
#import <Foundation/Foundation.h>
#import "findnumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FindNumber *fn = [[FindNumber alloc]init];
        [fn GetInput];
    
        
    }
    return 0;
}
