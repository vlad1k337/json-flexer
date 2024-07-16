#ifndef TOKEN_H
#define TOKEN_H

typedef enum {
	TOKEN_EOF=0,
	LCURL,
	RCURL,
	LSQUARE,
	RSQUARE,
	COMMA,
	COLON,
	TRUE,
	FALSE,
	TNULL,
	STRING,
	DECIMAL,
	ERROR
} token_t;

#endif
