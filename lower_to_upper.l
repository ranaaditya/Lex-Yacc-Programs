/** 
   A lex program to convert all lowercase to uppercase & Reverse

   @author: ranaaditya
**/

lowercase[a-z]
uppercase[A-Z]
space[\t\n]

%%

{lowercase} {printf("%c",yytext[0] - 32);}
{uppercase} {printf("%c",yytext[0] + 32);}
{space} ECHO;
. ECHO;
%%

int yywrap() {
    return 1;
}

int main()
{
	yylex();
    return 0;
}