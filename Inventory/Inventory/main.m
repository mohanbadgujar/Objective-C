//
//  main.m
//  Inventory
//
//  Created by BridgeLabz Solutions LLP  on 2/18/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inventory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Inventory *in = [[Inventory alloc]init];
        [in getInput];
        [in getRice];
        [in getPulses];
        [in getWheat];
        [in writeOnJson];
    }
    return 0;
}
