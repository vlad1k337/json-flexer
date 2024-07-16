# Json Flexer 
Simple json lexer writed using [Flex](https://github.com/westes/flex) and C. 
Will (hopefully) be supplemented with proper syntactical analyzer soon. 

## Installation

``` Shell
git clone https://github.com/vlad1k337/json-flexer
make
./scanner <file.json>
```
## Example usage
#### Input:
``` Json
{
    "fruit": "Apple",
    "size": "Large",
    "color": "Red"
}
```
#### Output: 
``` Shell

Line 1: token LEFT_CURL
{

Line 2: token STRING
"fruit"

Line 2: token COLON
:

Line 2: token STRING
"Apple"

Line 2: token COMMA
,

Line 3: token STRING
"size"

Line 3: token COLONLine 2: token COLON
:

Line 3: token STRING
"Large"

Line 3: token COMMA
,

Line 4: token STRING
"color"

Line 4: token COLON
:

Line 4: token STRING
"Red"

Line 5: token RIGHT_CURL
}
```
