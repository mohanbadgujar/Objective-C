
#import <Foundation/Foundation.h>

 static int front=0;
 static int rear=0;
 static int itemcount=0;
 static int people;

@interface CashCounter : NSObject
{
    int array[100];
}

-(void)enqueue:(int)people;
-(void)queue;
-(void)dequeue;


@end
