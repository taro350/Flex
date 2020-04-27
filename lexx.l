%{
int a = 0;
int b = 0;
int c = 0;
%}

%%

[a-zA-Z]+ {b++; a += strlen(yytext);}
\n {a++; c++;}
. {a++;}
%%

main(int argc, char* argv[])
{
yylex();
printf("%8d%8d%8d\n", c, b, a);
}
