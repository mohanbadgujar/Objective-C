#import <Foundation/Foundation.h>
static int num;

@interface Hashing :NSObject
{
    NSMutableArray *linklist;
    //NSMutableArray *linklist1;
    int arr[100];
}
-(void)readNumber;
-(void)getInput;
-(void)addremove;
-(void)putAccordingRemainder;
-(void)search;
-(void)display;
-(void)display1;
@end
