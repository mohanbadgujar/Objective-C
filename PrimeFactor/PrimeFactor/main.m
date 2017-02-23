//
//  main.m
//  PrimeFactor
//
//  Created by BridgeLabz Solutions LLP  on 2/7/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "prime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PrimeFactor *pf =[[PrimeFactor alloc]init];
        [pf GetInput];
        [pf Calculate];
    }
    return 0;
}
