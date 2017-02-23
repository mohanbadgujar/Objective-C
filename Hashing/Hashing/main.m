//
//  main.m
//  Hashing
//
//  Created by BridgeLabz Solutions LLP  on 2/20/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "hashing.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Hashing *h = [[Hashing alloc]init];
        [h readNumber];
        [h getInput];
        [h addremove];
        [h putAccordingRemainder];
        [h search];
        
    }
    return 0;
}
