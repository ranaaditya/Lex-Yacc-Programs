/** 
    A lex Program to check the given number for even and odd 

    @author: ranaaditya
**/

%{
	#include<stdio.h>
	#include<stdlib.h>
	int number1;
	int number2;
%}

sequence[0-9]*

%%

{sequence}[0|2|4|6|8] {
	printf("Even number[%d]",yyleng);
	return atoi(yytext);
	}

{sequence}[1|3|5|7|9] {
	printf("Odd number[%d]",yyleng);
	return atoi(yytext);
	}

%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("\nInput a number \n");

	number1 = yylex();
	number2 = yylex();

	int difference=number1 - number2;
	
    if(difference % 2 != 0)
		printf("\nYour inputs were checked for correctness,\nResult: Correct\n");
	else
		printf("\nYour inputs were checked for crrectness,\nResult: Incorrect\n");
	
    return 1;
}