//
//  Flip.h
//  FlipCoin
//
//  Created by BridgeLabz Solutions LLP  on 2/6/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#ifndef Flip_h
#define Flip_h
@interface FlipCoin : NSObject
{
    int flip;
    int tail;
    int head;
}
-(void)flipcheck :(int)no_of_time;
@end
#endif /* Flip_h */
