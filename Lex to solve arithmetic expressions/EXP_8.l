%{
#include<stdio.h>
#include"y.tab.h"
extern int yylval;
%}
 
%%
[0-9]+ { 
          yylval=atoi(yytext);
          return NUM;
       }
[\t] ;
\n return 0;
. return yytext[0];
%%

%{
    #include<stdio.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%left '(' ')'
%%
expr: e{
         printf("result:%d\n",$$);
         return 0;
        }
e:e'+'e {$$=$1+$3;}
 |e'-'e {$$=$1-$3;}
 |e'*'e {$$=$1*$3;}
 |e'/'e {$$=$1/$3;}
 |'('e')' {$$=$2;}
 | NUM {$$=$1;}
;
%%
 
main()
{
   printf("\n enter the arithematic expression:\n");
   yyparse();
   printf("\nvalid expression\n");
}
yyerror()
{
   printf("\n invalid expression\n");
   exit(0);
}