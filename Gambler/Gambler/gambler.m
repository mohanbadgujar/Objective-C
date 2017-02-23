/*
    Gambler -

  Created by Mohan Badgujar at BridgeLabz Solutions LLP  on 2/8/17.
  Copyright © 2017 BridgeLabz Solutions LLP . All rights reserved.

  ----------------------------------Problem Statement - Gambler -----------------------------------------------
 
  Desc -> Simulates a gambler who start with $stake and place fair $1 bets until he/she goes broke (i.e. has no money) or reach $goal. Keeps track of the number of times he/she wins and the number of bets he/she makes. Run the experiment N times, averages the results, and prints them out.
  I/P -> $Stake, $Goal and Number of times
  Logic -> Play till the gambler is broke or has won
  O/P -> Print Number of Wins and Percentage of Win and Loss.
 
 --------------------------------------------------------------------------------------------------------------
*/

#import <Foundation/Foundation.h>
#import "gambler.h"
@implementation Gambler

-(void)GetInput{
    NSLog(@"Enter the $stake=");
    scanf("%d",&stack);
    NSLog(@"Enter the Goal=");
    scanf("%d",&goal);
    NSLog(@"Enter the no of times=");
    scanf("%d",&no_of_times);
}
-(void)Operation{
    win=0;
    bets=0;
    
    
    for(int i=0;i<no_of_times;i++)
    {
    cash=stack;
    
    while (cash>0 && cash<goal)
    {
        random = rand()/(float)RAND_MAX;
      //  NSLog(@"%f",random);
        if(random<0.5)
            cash++;
        else
            cash--;
        
        bets++;
    }
        
    
    if(cash==goal)
        win++;
    
    }
    
}
-(void)Display
{
    NSLog(@"No of wins =%d",win);
    per=((float)win/no_of_times*100);
    NSLog(@"Percentage of wins=%f",per);
}
@end
