//
//  unorder.m
//  Unorder
//
//  Created by BridgeLabz Solutions LLP  on 2/15/17.
//  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "unorder.h"

char word[20];
@implementation UnOrderedList

//Read the from a file
-(void)readInfo
{
    NSString *file= @"/Users/bridgelabz/Desktop/ios/Unorder/Unorder/File";
    NSError *error;
    NSString *content=[NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    NSLog(@"%@",content);
    
    //linklist = (NSMutableArray*)[content componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    
    linklist =(NSMutableArray*)[content componentsSeparatedByString:@" "];
    [linklist removeLastObject];
}


//Take user input for a word you want to add or remove
-(void)getInput
{
    printf("Enter any word you want to add or remove from list=");
    scanf("%s",word);
}

//if found then pop the number out of the list else insert the number in appropriate position
-(void)addremove
{
    //NSString *text=[[NSString alloc]initWithFormat:@"%s",word];
    
    NSString *text=[NSString stringWithFormat:@"%s",word];
    
    if([linklist containsObject:text])
        [linklist removeObject:text];
    else
    {
        [linklist addObject:text];
    }
    [self Display];
}

//Display
-(void)Display
{
    NSLog(@"%@",linklist);
// for(int i=0;i<[linklist count];i++)
    
}
@end
