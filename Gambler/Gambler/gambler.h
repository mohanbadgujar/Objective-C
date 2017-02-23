//
//  gambler.h
//  Gambler
//
//  Created by BridgeLabz Solutions LLP  on 2/8/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

@interface Gambler : NSObject
{
    int cash;
    int win;
    int loss;
    int stack;
    int goal;
    int no_of_times;
    int bets;
    float random;
    float per;
}
-(void)GetInput;
-(void)Operation;
-(void)Display;
@end
