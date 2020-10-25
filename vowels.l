/** 
     A lex program to count number of vowels in agivem string 

     @author: ranaaditya
**/

/* Definitiotion */
%{
    #include<stdio.h>
    int vowels_count = 0;
%}

/* actions */
%%
[aeiouAEIOU] {
    printf("%s\n", yytext);
    vowels_count++;
    }

    . {}

    \n { return 0; }
%%

/* called by lex when input is exhausted or end of line occured */
int yywrap() {

    return 1;
    
}

int main() {
    /* takes input */
    printf("Enter a string \n");

    /* starts the lexical analysis */
    yylex();

    printf("Number of vowels are - %d \n", vowels_count);

    return 0;
}