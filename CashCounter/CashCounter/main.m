#import <Foundation/Foundation.h>
#import "cashcounter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int balance = 5000;
        int choice;
        int damount;
        int wamount;
        
        CashCounter *cc = [[CashCounter alloc]init];
        
        printf("Enter the number of people you want to add=");
        scanf("%d",&people);
        
        if(people==0)
            printf("\n!!!!!!Please enter right value\n");
        
        [cc enqueue:people];
        //[cc queue];
        
        do{
        printf("\n1)Deposit\n2)Withdraw\n3)balance\nEnter your choice=");
            scanf("%d",&choice);
            switch(choice)
            {
                case 1:
                    printf("\n Enter the amount you want to deposit=");
                    scanf("%d",&damount);
                    balance=balance+damount;
                    printf(" Your Balance =%d",balance);
               
                    [cc dequeue];
                    break;
                case 2:
                    printf("\nEnter the amount you want to withdraw=");
                    scanf("%d",&wamount);
                    
                    if(balance>=wamount)
                    {
                        balance=balance-wamount;
                        printf("\nYour balance is=%d",balance);
                        [cc dequeue];
                    }else
                        {
                            printf("Warning!\nYou can withdraw upto %d amount only",balance);
                         //   itemcount--;
                            [cc queue];
                        }
                    break;
                case 3:
                    printf("Your balance is=%d",balance);
                    [cc dequeue];
                    break;
                case 4:
                    printf("\n!!!Please enter right choice......\n");
                    break;
            }
        
   
        }while(choice!=4);
    }
    return 0;
}
