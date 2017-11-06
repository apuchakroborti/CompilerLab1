%%
[0-9][0-9]?[0-9]?[0-9]? { int number=atoi(yytext);if(number%4==0)printf("Div_4* %s\n",yytext); }
[+\-][0-9][0-9]* { printf("Signed %s\n",yytext); }
[0-9][0-9]*"."[0-9][0-9]* { printf("Decimal %s\n",yytext); }
(([+\-][0-9][0-9]*)|([0-9][0-9]*"."[0-9][0-9]*))[e\E][+\-][0-9][0-9]* { printf("Scientific %s\n",yytext); }
"0x"[A-F\0-9][A-F\0-9]?[A-F\0-9]?[A-F\0-9]? { printf("Hex %s\n",yytext); }  
[a-zA-Z][a-zA-Z]*[0-9]* { printf("ld %s\n",yytext); }
[0-9][0-9][0-9][0-9][0-9][0-9]* { printf("Overflow %s\n",yytext); }
"=" { printf("AssignOp %s\n",yytext); }
"+" { printf("AddOp %s\n",yytext); }
"*" { printf("MultOp %s\n",yytext); }
">" { printf("Relop %s\n",yytext); }
"<" { printf("Relop %s\n",yytext); }
"<=" { printf("Relop %s\n",yytext); }
">=" { printf("Relop %s\n",yytext); }
"!=" { printf("Relop %s\n",yytext); }
"==" { printf("Relop %s\n",yytext); }
[ \n\t] { printf(""); }
.  { printf("Invalid %s\n",yytext); }


%%
int main(int argc, char **argv)
{
freopen("input.in","r",stdin);

freopen("output.out","w",stdout);	
yylex();
	return 0;
}
