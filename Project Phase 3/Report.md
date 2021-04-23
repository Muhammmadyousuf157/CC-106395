# CC 106395: MINI - C

### PROJECT MEMBERS
StdID | Name
------------ | -------------
**63239** | **Muhammad Yousuf** <!--this is the group leader in bold-->
63303 | Mirza Asad Baig
<!-- Replace name and student ids with acutally group member names and ids-->
## Project Description ##
In this project we make a parser for Mini - C language that parse the input code and let the user know of any errors, first we bult a lexical analyzer by using flex which output the token stream and then we use YACC to design a parser.
##Sample Language Used ##
The language which we choose is Mini - C
```
while (count < desiredCount) {
 bool isPrime = true;
 int j = 1;
 while (j < num / 2) {
 if (j != 1 && num % j == 0) {
 isPrime = false;
 break;
 } else
 j = j + 1;
 }
 if (isPrime) {
 print(toString(num));
 if (count < desiredCount - 1)
 print(toString(", "));
 count = count + 1;
 }
 num = num + 1;
}

```
### Lexical Specification
### Statement
```
program = statement*

statement = block
 | SEMI
 | assignment
 | declaration
 | if
 | while
 | 'break' SEMI
 | 'continue' SEMI
 | 'exit' '(' ')' SEMI
 | 'print' parExpression SEMI
 | 'println' parExpression SEMI

block = '{' statement* '}'

```
### Expressions
```
expression = literal
 | ID
 | ('!' | '-') expression
 | expression ('*' | '/' | '%') expression
 | expression ('+' | '-') expression
 | expression ('<' | '>' | '<=' | '>=') expression
 | expression ('==' | '!=') expression
 | expression ('&&') expression
 | expression ('||') expression
 | parExpression
 | 'readInt' '(' ')'
 | 'readDouble' '(' ')'
 | 'readLine' '(' ')'
 | 'toString' parExpression

parExpression = '(' expression ')'

assignment = ID assignmentOp expression SEMI

declaration = type ID (assignmentOp expression)? SEMI

if = 'if' parExpression statement ('else' statement)?

while = 'while' parExpression statement
 
assignmentOp = '='

```
### Types
```
statement = block
 | SEMI
 | assigtype = 'int'
 | 'double'
 | 'bool'
 | 'string'

```
### Literals
```
literal = IntegerLiteral
 | FloatingPointLiteral
 | StringLiteral
 | BooleanLiteral 
 
IntegerLiteral = DIGIT+
FloatingPointLiteral = DIGIT+ '.' DIGIT+
StringLiteral = '"' (CHAR | '\"')* '"'
BooleanLiteral = 'true' | 'false'

```
### Semi
```
SEMI = ';'

```
### ID
```
ID = (LETTER | '_') (LETTER | DIGIT | '_')*

```
### Digit
```
DIGIT = '0' | ... | '9'

```

### Letter
```
LETTER = 'a' | ... | 'z' | 'A' | ... | 'Z'

```

### Char
```
CHAR = <unicode character, as in Java>

```

### WhiteSpace Characters
```
Whitespace characters (' ', '\t', '\r', '\n') are skipped outside of tokens.

```

### Grammar
Grammar description using EBNF.

•        'x' — terminal symbol.

•	       x? – zero or one occurrences of x.

•        x* – zero or more occurrences of x.

•        x+ – one or more occurrences of x.

•        x | y – alternative (x or y).

•        () – group, for example (x | y) z (x y)?

## Problems Faced
We face  two main problems in this project, first one is how to create a felx file and the second one is how to create a yacc file.

### Problem 1: How to create a flex file
The first problem we faced is how to create a flex file, we solved this problem because our course instructor show us an example how to create a flex file.

###Problem 2: 
The second problem we faced is how to create a yacc file, we solved this problem by watching tutorials of yacc file on Youtube.


##References##
- Mention and add [links](https://guides.github.com/features/mastering-markdown/), 
- Use bullets like this.
- Mention all references. Plagiarism will not be tolerated.
- You see markdown is not that difficult.
- You are CS students not some tom harry from BBA SHE-B-A :-).
- You can and must learn to use markdown and Github. 
- All future project development will be down in something similar to GITHUB
