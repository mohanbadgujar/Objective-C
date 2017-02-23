//
//  main.m
//  Gambler
//
//  Created by BridgeLabz Solutions LLP  on 2/8/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gambler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       Gambler *g = [[Gambler alloc]init];
        [g GetInput];
        [g Operation];
        [g Display];
        }
    return 0;
}
