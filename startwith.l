/** 
    Count of Words Starting with fuck 

    @author: ranaaditya
**/

%{
	int count = 0;
%}

alpha [a-zA-Z]
digit [0-9]
space [\t\n]
start ^fuck
%%

{start} { count++;}
{space}(a|A)({alpha}|{digit})* { count++;}
. ;
%%

int yywrap() {
    return 1;
}


int main()
{
    printf("Enter the word\n");
	yylex();
	printf("count = %d\n",count);

    return 0;
}