//
//  main.m
//  FlipCoin
//
//  Created by BridgeLabz Solutions LLP  on 2/6/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flip.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int no_of_time;
        NSLog(@"Enter the no of time coin to be toss:");
        scanf("%d",&no_of_time);
        
        FlipCoin *fc = [[FlipCoin alloc]init];
        [fc flipcheck:no_of_time];
    }
    return 0;
}

