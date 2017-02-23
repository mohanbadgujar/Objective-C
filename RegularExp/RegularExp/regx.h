//
//  regx.h
//  RegularExp
//
//  Created by BridgeLabz Solutions LLP  on 2/17/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#ifndef regx_h
#define regx_h


#endif /* regx_h */

@interface RegularExp1 :NSObject
{
    NSString *message;
    NSString *datepattern;
    NSString *currentdate;
}
-(void)setData:(NSString*)string;
-(void)dateDetect;
-(void)display:fnamestr andfullname:snamestr andmob:mobstr;
@end
