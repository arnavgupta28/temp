%{
#include<stdio.h>
int lc=0, sc=0, tc=0, ch=0, wc=0;   /* GLOBAL VARIABLES */
%}
/* RULE SECTION */
%%
\n      { lc++; ch += yyleng; }
[ ]     { sc++; ch += yyleng; }
\t      { tc++; ch += yyleng; }
[^\t\n ]+ { wc++; ch += yyleng; } 
%%
int yywrap() { return 1; }
/* MAIN FUNCTION */
int main() {
    printf("Enter the Sentence : \n");
    yylex();
    printf("Number of lines : %d\n", lc);
    printf("Number of spaces : %d\n", sc);
    printf("Number of tabs : %d\n", tc);
    printf("Number of words : %d\n", wc);
    printf("Number of characters : %d\n", ch);
    return 0;
}
