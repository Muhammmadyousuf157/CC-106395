## CC Spring 2021: Project Phase 1

## PROJECT MEMBERS

StdID | Name
------------ | -------------
**63239** | **Muhammad Yousuf** 
63303 | Mirza Asad Baig


## Language Selected ##
**Mini-C**

## Example Constructs (If/While/loop/Datatypes) ##
```
println("Hello world!");

print("Enter name: ");
string name = readLine();

print("Enter age: ");
int age = readInt();

if (age < 10) {
 println("Sorry, you are not old enough to learn about compilers");
 exit();
}

println("Hello " + name);
int n = 10;
int sum = 0;
int i = 1;

while (i <= n) {
 sum = sum + i;
 i = i + 1;
}

println("Sum of the first " + toString(n) +
 " natural numbers: " + toString(sum));

double pi = 3.141592;
int r = 5;
double area = pi * (r * r);
println("Area of a circle with radius " + toString(r) + ": " +
 toString(area));

int desiredCount = 20;

println("First " + toString(desiredCount) + " prime numbers:");

int num = 2;
int count = 0;

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

## Lexical Specification
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

## Language Context Free Grammar (CFG) 
Grammar description using EBNF.

•    'x' — terminal symbol.

•    x? – zero or one occurrences of x.

•    x* – zero or more occurrences of x.

•    x+ – one or more occurrences of x.

•    x | y – alternative (x or y).

•    () – group, for example (x | y) z (x y)?
