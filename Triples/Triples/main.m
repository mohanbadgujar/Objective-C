//
//  main.m
//  Triples
//
//  Created by BridgeLabz Solutions LLP  on 2/10/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "triples.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        NSLog(@"Enter the number of integer you want to check=");
        scanf("%d",&n);
        
        Triples *t = [[Triples alloc]init];
        
        [t Check:n];
    }
    return 0;
}
