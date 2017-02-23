#import <Foundation/Foundation.h>
#import "stopwatch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[12],input2[12];
        NSString *strstart=@"start";
        NSString *strstop=@"stop";
        StopWatch *watch=[[StopWatch alloc]init];
        
start:  printf("\nEnter 'start':");
        scanf("%s",input);
        NSString *inputfirst=[NSString stringWithFormat:@"%s",input];
        if([strstart isEqualToString:inputfirst])
        {
            [watch starttime];
            printf("\nStop Watch is started...");
        }
        else
        {
            printf("\nPlease enter start to start stop watch !..");
            goto start;
        }
        
        printf("\nEnter 'stop' to stop:");
        NSString *inputsec;
        do
        {
            scanf("%s",input2);
            inputsec=[NSString stringWithFormat:@"%s",input2];
        }
        while(![inputsec isEqualToString:strstop]);
        [watch stoptime];
        [watch calculatetime];
    }
    return 0;
}

