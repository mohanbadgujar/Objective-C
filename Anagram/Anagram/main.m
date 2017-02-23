//
//  main.m
//  Anagram
//
//  Created by BridgeLabz Solutions LLP  on 2/7/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "anagram.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Anagram *a = [[Anagram alloc]init];
        [a GetInput];
        [a Check];
        }
    return 0;
}
