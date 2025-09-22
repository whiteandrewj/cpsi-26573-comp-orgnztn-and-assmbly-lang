#include <stdio.h>
int main(){
    int num1, num2, num3;
    printf("%s","Enter a number: ");
    scanf("%d",&num1);
    printf("%s","Enter a larger number: ");
    scanf("%d",&num2);
    printf("%s","Enter an even larger number: ");
    scanf("%d",&num3);
    printf("%d%s%d%s%d\n",num1," < ",num2," < ",num3);
    printf("%d%s%d%s%d\n",num3," > ",num2," > ",num1);
    return 0;
}
