/*
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/17/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
  
 ************Regular Expression Demonstration*************
  Desc -> Read in the following message: Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016. Use Regex to replace name, full name, Mobile#, and Date with proper value.
  I/P -> read in the Message
  Logic -> Use Regex to do the following
  Replace <<name>> by first name of the user ( assume you are the user)
  replace <<full name>> by user full name.
  replace any occurance of mobile number that should be in format 91-xxxxxxxxxx by your contact number.
  replace any date in the format XX/XX/XXXX by current date.
  O/P -> Print the Modified Message.

*/

#import <Foundation/Foundation.h>
#import "regx.h"

@implementation RegularExp1

-(void)setData:(NSString*)msg
{
    message=msg;
}

-(void)dateDetect
{
    NSError *error = NULL;
    NSDataDetector *detector = [NSDataDetector dataDetectorWithTypes:(NSTextCheckingTypes)NSTextCheckingTypeDate error:&error];
    
    NSArray *matches = [detector matchesInString:message
                                         options:0
                                           range:NSMakeRange(0, [message length])];
    
    for (NSTextCheckingResult *match in matches) {
        
        if ([match resultType] == NSTextCheckingTypeDate) {
            
            NSDate *date = [match date];
            
            NSDateFormatter *formatter;
            
            formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"dd/MM/yyyy"];
            
            datepattern = [formatter stringFromDate:date];
            
        }
    }
    
    NSDate *cdate =[NSDate date];
    NSDateFormatter *dformat =[[NSDateFormatter alloc]init];
    [dformat setDateFormat:@"dd/MM/yyyy"];
    currentdate =[dformat stringFromDate:cdate];
    
}
-(void)display:(NSString*)name andfullname:(NSString*)sname andmob:(NSString*)mob
{
    NSError *error;
   
    //---for name-----
    
    NSRegularExpression *regexname = [NSRegularExpression regularExpressionWithPattern:@"<<name>>" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSString *mname = [regexname stringByReplacingMatchesInString:message options:0 range:NSMakeRange(0, [message length]) withTemplate:name];
    
    
    //---for full name----
    
    NSRegularExpression *regexsname=[NSRegularExpression regularExpressionWithPattern:@"<<full name>>" options:NSRegularExpressionCaseInsensitive error:&error];
    
        [name stringByAppendingString:@" "];
        NSString *fullname=[name stringByAppendingString:sname];
    
        NSString *mfname=[regexsname stringByReplacingMatchesInString:mname options:0 range:NSMakeRange(0,[mname length]) withTemplate:fullname];
    
    //----for mobile no*----
    
    NSRegularExpression *regexmob=[NSRegularExpression regularExpressionWithPattern:@"xxxxxxxxxx" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSString *mmob =[regexmob stringByReplacingMatchesInString:mfname options:0 range:NSMakeRange(0,[mfname length]) withTemplate:mob];
    
   // NSLog(@"%@",mmob);
    
    //----for date---
    
    NSRegularExpression *regexdate =[NSRegularExpression regularExpressionWithPattern:datepattern options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSString *mdate=[regexdate stringByReplacingMatchesInString:mmob options:0 range:NSMakeRange(0,[mmob length]) withTemplate:currentdate];
    
    NSLog(@"\nModified Content:%@\n",mdate);
}

@end
