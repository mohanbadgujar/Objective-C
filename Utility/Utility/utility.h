//
//  utility.h
//  Utility
//
//  Created by BridgeLabz Solutions LLP  on 2/10/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#ifndef utility_h
#define utility_h

#define n 5
#endif /* utility_h */

@interface Utility : NSObject
{
    int arr[n];
}
-(void)GetInputInt;
-(void)GetInputStr;
-(void)BinarySearchInteger;
-(void)BinarySearchString;
-(void)InsertionSortInteger;
-(void)InsertionSortString;
-(void)BubbleSortInteger;
-(void)BubbleSortString;

@end
