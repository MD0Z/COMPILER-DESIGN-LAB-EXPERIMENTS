# Write a program to implement the Recursive Descent Parser. 
The grammar on which we are going to do recursive descent parsing is:\
 \
E -> E+T | T \
T -> T*F | F \
F -> (E) | id \
 
RD parser will verify whether the syntax of the input stream is correct by checking each character  from left to right. A basic operation necessary is reading characters from the input stream and matching then with terminals from the grammar that describes the syntax of the input. \
 \
 The given grammar can accept all arithmetic equations involving +, * and (). \
eg: \
 a+(a*a)  a+a*a , (a), a , a+a+a*a+a.... etc are accepted \
a++a, a***a, +a, a*, ((a . . . etc are rejected. \
 \
command:\
gcc EXP_4.c\
a.exe\
a+(a*a)\
a.exe\
a++a\
\
![github-small](https://github.com/MD0Z/COMPILER-DESIGN-LAB-EXPERIMENTS/blob/main/Recursive%20descent%20parser/OUTPUT.PNG?raw=true)
-------------------
