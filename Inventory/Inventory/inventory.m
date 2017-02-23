/*
   Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/18/17.
   Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

    **********JSON Inventory Data Management of Rice, Pulses and Wheats*********
 
   Desc -> Create a JSON file having Inventory Details for Rice, Pulses and Wheats with properties name, weight, price per kg.
   Use Library : Java JSON Library, For IOS JSON Library use NSJSONSerialization for parsing the JSON.
   I/P -> read in JSON File
   Logic -> Get JSON Object in Java or NSDictionary in iOS. Create Inventory Object from JSON. Calculate the value for every Inventory.
   O/P -> Create the JSON from Inventory Object and output the JSON String

*/

#import <Foundation/Foundation.h>
#import "inventory.h"

@implementation Inventory

-(void)getInput
{
    NSData *jsonData=[NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/ios/Inventory/Inventory/inventoryinput.json"];
   
    id jsonObjects = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    
    someDictionary = (NSDictionary*)jsonObjects;
    
    rice = someDictionary[@"Rice"];
    pulse = someDictionary[@"Pulses"];
    wheat = someDictionary[@"Wheat"];
    
}

-(int)getRice{
    NSString *ricename[[rice count]];
    int i=0;
    int totalricevalue=0;
    int valueforeachrice[[rice count]];
    for (NSDictionary *ricedata in rice)
    {
        valueforeachrice[i]=[[ricedata objectForKey:@"Weight"]intValue]*[[ricedata objectForKey:@"Price"]intValue];
        ricename[i]=[ricedata objectForKey:@"Name"];
        i++;
    }
    
    for (i=0; i<[rice count]; i++)
    {
        totalricevalue=totalricevalue+valueforeachrice[i];
    }
    
    printf("\n*************Rice***************\n");
    for (i=0; i<[rice count]; i++)
    {
        NSLog(@"Name:%@\tValue:%d",ricename[i],valueforeachrice[i]);
    }
    
    printf("\nTotal Rice Item:%d",i);
    printf("\nTotal Rice Value in Inventory:%d\n",totalricevalue);
    //-------------------------write to file ---------
    outputrice=@{
                 @"Rice": @[
                         @{
                             @"Total-Rice-Item":[NSString stringWithFormat:@"%d",i] ,
                             @"Total-Rice-Value":[NSString stringWithFormat:@"%d",totalricevalue] }
                         
                         ]
                 };
    
    //-------------------------end -------------------
    return totalricevalue;
    
}
-(int)getPulses
{
    NSString *pulsename[[pulse count]];
    int i=0;
    int totalpulsevalue=0;
    int valueforeachPulse[[pulse count]];
    for(NSDictionary *pulsedata in pulse)
    {
        valueforeachPulse[i]=[[pulsedata objectForKey:@"Weight"]intValue]*[[pulsedata objectForKey:@"Price"]intValue];
        pulsename[i]=[pulsedata objectForKey:@"Name"];
        i++;
    }
    
    for(i=0;i<[rice count];i++)
    {
        totalpulsevalue = totalpulsevalue+valueforeachPulse[i];
    }
    
    printf("\n*************Pulse***************\n");
    for (i=0; i<[rice count]; i++)
    {
        NSLog(@"Name:%@\tValue:%d",pulsename[i],valueforeachPulse[i]);
    }
    
    printf("Total pulse item =%d\n",i);
    printf("Total pulse value in inventory:%d\n",totalpulsevalue);


//-------------------------write to file ---------
    outputpulse=@{
             @"Pulse": @[
                     @{
                         @"Total-Pulse-Item":[NSString stringWithFormat:@"%d",i] ,
                         @"Total-Pulse-Value":[NSString stringWithFormat:@"%d",totalpulsevalue] }
                     
                     ]
             };

    return totalpulsevalue;
}

-(int)getWheat
{
    NSString *wheatname[[wheat count]];
    int i=0;
    int totalwheatvalue=0;
    int valueforeachWheat[[wheat count]];
    for(NSDictionary *wheatdata in wheat)
    {
        valueforeachWheat[i]=[[wheatdata objectForKey:@"Weight"]intValue]*[[wheatdata objectForKey:@"Price"]intValue];
        wheatname[i]=[wheatdata objectForKey:@"Name"];
        i++;
    }
    
    for(i=0;i<[wheat count];i++)
    {
        totalwheatvalue = totalwheatvalue+valueforeachWheat[i];
    }
    
    printf("\n*************Wheat***************\n");
    for (i=0; i<[wheat count]; i++)
    {
        NSLog(@"Name:%@\tValue:%d",wheatname[i],valueforeachWheat[i]);
    }
    
    printf("Total pulse item =%d\n",i);
    printf("Total Wheat value in inventory:%d\n",totalwheatvalue);
    
    
    //-------------------------write to file ---------
    outputwheat=@{
                  @"Wheat": @[
                          @{
                              @"Total-Pulse-Item":[NSString stringWithFormat:@"%d",i] ,
                              @"Total-Pulse-Value":[NSString stringWithFormat:@"%d",totalwheatvalue] }
                          
                          ]
                  };
    
    return totalwheatvalue;

}

-(void)writeOnJson
{
    NSArray *finalarray=[[NSArray alloc]initWithObjects:outputrice,outputpulse,outputwheat, nil];
    
    NSData *data1 = [NSJSONSerialization dataWithJSONObject:finalarray options:NSJSONWritingPrettyPrinted error:nil];
    
    NSString *jsonStr = [[NSString alloc] initWithData:data1
                                              encoding:NSUTF8StringEncoding];
    [jsonStr writeToFile:@"/Users/bridgelabz/Desktop/ios/Inventory/Inventory/inventoryoutput.json" atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end
