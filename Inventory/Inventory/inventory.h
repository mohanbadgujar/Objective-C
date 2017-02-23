//
//  inventory.h
//  Inventory
//
//  Created by BridgeLabz Solutions LLP  on 2/18/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#ifndef inventory_h
#define inventory_h


#endif /* inventory_h */
@interface Inventory : NSObject
{
    NSDictionary *someDictionary;
    NSArray *rice;
    NSArray *pulse;
    NSArray *wheat;
    NSDictionary *outputrice;
    NSDictionary *outputpulse;
    NSDictionary *outputwheat;
    NSArray *writearray;
}

-(void)getInput;
-(int)getRice;
-(int)getPulses;
-(int)getWheat;
-(void)writeOnJson;

@end
