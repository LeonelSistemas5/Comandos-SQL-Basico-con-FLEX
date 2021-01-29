%option noyywrap
%{
	#include<stdio.h>
%}


%%

[S|s*][E|e*][L|l*][E|e*][C|c*][T|t*]             {printf("Comando SQL SELECT|");}
[F|f*][R|r*][O|o*][M|m*]                         {printf("Comando SQL FROM|");}
[W|w*][H|h*][E|e*][R|r*][E|e*]                   {printf("Comando SQL WHERE|");}
[a-zA-Z][a-z|0-9]*                               {printf("Identificador|");}

%%



int main()
{
printf("Enter a string of data\n");
yylex();
}
