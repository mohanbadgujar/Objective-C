//
//  main.m
//  RegularExp
//
//  Created by BridgeLabz Solutions LLP  on 2/17/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "regx.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
                RegularExp1 *data =[[RegularExp1 alloc]init];
                char name[15];
                char sname[20];
                
                char mob[11];
                printf("\nEnter your name:\n");
                scanf("%s",name);
                printf("\nEnter your surname:\n");
                scanf("%s",sname);
                printf("\nEnter your Mobile No:\n");
                scanf("%s",mob);
                
                NSString *fnamestr =[NSString stringWithFormat:@"%s",name];
                NSString *snamestr =[NSString stringWithFormat:@"%s",sname];
                NSString *mobstr =[NSString stringWithFormat:@"%s",mob];
                
                
                NSString *msg =@"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.\n";
        
                NSLog(@"\nMessage:%@\n",msg);
        
    [data setData:msg];
    [data dateDetect];
    [data display:fnamestr andfullname:snamestr andmob:mobstr];
        
    }
    return 0;
}
