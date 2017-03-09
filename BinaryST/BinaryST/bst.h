//
//  bst.h
//  BinaryST
//
//  Created by BridgeLabz Solutions LLP  on 3/9/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//


#import <Foundation/Foundation.h>
struct Node {
    int data;
    struct Node *left;
    struct Node *right;
};

@interface Binary : NSObject

-(BOOL)Insert:(int)data;
-(void)Order:(int) data;
-(void)preOrder:(struct Node *)current;
-(void)inOrder:(struct Node *)current;
-(void)postOrder:(struct Node *)current;
-(struct Node *)getTree;
@end
