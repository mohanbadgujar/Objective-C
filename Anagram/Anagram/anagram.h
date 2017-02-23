//
//  anagram.h
//  Anagram
//
//  Created by BridgeLabz Solutions LLP  on 2/7/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

@interface Anagram : NSObject
{
    NSString *str1;
    NSString *str2;
    NSInteger len1;
    NSInteger len2;
    int counter;
}
-(void)GetInput;
-(void)Check;

@end
