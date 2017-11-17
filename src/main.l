
%{
#include <stdio.h>
%}


%%
 // expressão regular para encontrar email valido
[A-Za-z0-9]+[-_.]*[A-Za-z0-9]+[@]([A-Za-z0-9]+[.][A-Za-z0-9])*
{
  printf("%s\n", yytext);
}

. ;
\n ;

%%

int main() {
  yylex();
  return 0;
}
