/*
  Anagram :-
 
  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/7/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

 *****************An Anagram Detection Example*********************
 Desc -> One string is an anagram of another if the second is simply a rearrangement of the first. For example, 'heart' and 'earth' are anagrams...
 I/P -> Take 2 Strings as Input such abcd and dcba and Check for Anagrams
 O/P -> The Two Strings are Anagram or not....

 */
#import <Foundation/Foundation.h>
#import "anagram.h"

@implementation Anagram

-(void)GetInput
{
    char s1[20];
    char s2[20];
    NSLog(@"Enter first String");
    scanf("%s",s1);
    NSLog(@"Enter second String");
    scanf("%s",s2);
    str1 = [NSString stringWithFormat:@"%s",s1];
    str2 = [NSString stringWithFormat:@"%s",s2];
}

-(void)Check
{
    counter=0;
    len1 = str1.length;
    len2 = str2.length;
    
    for(int i=0;i<len1;i++)
    {
        for(int j=0;j<len2;j++)
        {
        if([str1 characterAtIndex:i] == [str2 characterAtIndex:j])
            counter++;
        }
    }
    if(counter==len1)
    NSLog(@"Enter string is anagram string");
    else
    NSLog(@"Enter string is not anagram string");
}

@end
