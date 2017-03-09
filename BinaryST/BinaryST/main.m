//
//  main.m
//  BinaryST
//
//  Created by BridgeLabz Solutions LLP  on 3/9/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "bst.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Binary *btree=[[Binary alloc]init];
        struct Node *tree;
        int ch,number,chd;
        do{
            printf("\n-------Welcome to Binary Search Tree-------");
            printf("\n1)Insert data\n2)Display\n3)Exit\nEnter Choice:\n");
            scanf("%d",&ch);
            switch (ch) {
                case 1:
                    printf("\nEnter number to Insert:\n");
                    scanf("%d",&number);
                    [btree Insert:number];
                    printf("\nSuccesfully inserted..");
                    break;
             
                case 2:
                    tree=[btree getTree];
                    printf("\n---------------------");
                    do{
                        printf("\n1)Pre-Order\n2)In-Order\n3)Post-Order\n4)Back\nEnter Choice:\n");
                        scanf("%d",&chd);
                        switch (chd)
                        {
                            case 1:
                                printf("\nPre-Order:\n");
                                [btree preOrder:tree];
                                break;
                            case 2:
                                printf("\nIn-Order:\n");
                                [btree inOrder:tree];
                                break;
                            case 3:
                                printf("\nPost-Order:\n");
                                [btree postOrder:tree];
                                break;
                                
                            default:
                                printf("\nWrong Choice !..");
                                break;
                        }
                    }while(chd!=4);
                    
                    break;
                    
                default:
                    printf("\nWrong Choice !..Please try again..");
                    break;
            }
        }while(ch!=5);
        
    }
    return 0;
}
