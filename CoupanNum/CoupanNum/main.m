//
//  main.m
//  CoupanNum
//
//  Created by BridgeLabz Solutions LLP  on 2/8/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "coupan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CoupanNum *cn = [[CoupanNum alloc]init];
        [cn GetInput];
        [CoupanNum Generate];
    }
    return 0;
}
