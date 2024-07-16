%option yylineno

%{
#include "token.h"
#include <stdio.h>

extern FILE *yyin;
extern int yylex();
extern char *yytext;
const char* tokens[] = {"EOF", "LEFT_CURL", "RIGHT_CURL", "LEFT_SQUARE", "RIGHT_SQUARE", "COMMA", "COLON", "VALUE_TRUE", "VALUE_FALSE", "VALUE_NULL", "STRING", "DECIMAL", "ERROR_TOKEN"};

%}
%%

<<EOF>>             { return TOKEN_EOF; }
"{"		    { return LCURL; }
"}"		    { return RCURL; }
"["		    { return LSQUARE; }
"]"		    { return RSQUARE; }
","		    { return COMMA; }
":"		    { return COLON; }
"true"		    { return TRUE; }
"false"		    { return FALSE; }
"null"		    { return TNULL; }
[ \t\r\n]+	    { }
\"([^\"]*)\"	    { return STRING; }
[0-9]+ { return DECIMAL; }
.		    { return ERROR; }
%%

int yywrap()
{
	return 1;
}

int main(int argc, char **argv) 
{
	yyin = fopen(argv[1], "r");
	if(!yyin) 
	{
		printf("JSONa NET!\n");
		return 2;
	}

	while(1) 
	{
		token_t t = yylex();
		if (t == TOKEN_EOF) break;
		printf("Line %d: token %s\n%s\n\n", yylineno, tokens[t], yytext);
	}
	return 0;
}
