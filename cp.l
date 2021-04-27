%{
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
 
int key=0, id=0, inti=0, float=0, cdn=0, ao=0, lo=0, ro=0, asn=0, head=0,lib=0, char=0, loop=0, com=0, fn=0;

%}

head "contain<"+[a-zA-Z]
lib  "putin>"|"putout<"
id [a-zA-Z]([a-zA-Z0-9])*
key intr|aslongas|open|end|in|out|where|send
inti [+-]?[0-9]+
float [+-]?[0-9]+[.][0-9]+|[+-]?[.][0-9]+|[0-9]+[.]e[+-][0-9]+|[+-][.]e[+-][0-9]
ao "++"|"--"|"**"|"//"
lo [&][&]|[|][|]|[!]
ro [<]|[>]|[<][=]|[>][=]|[=][=]|[!][=]
asn [=]|[+][=]|[-][=]|[*][=]|[/][=]
loop "loop"+" "
char ":"|"{"|"}"|"("|")"|"["|"]"|"@"|"$"|","|"%"|">"|"<"|"?"
cdn "whether"+" "|"or"+" " 
com [ ]*[@][a-zA-Z0-9(){}_!@#*+-,.:\|?]*[@]
fun "fn"+" "

%%

{head} {head++;}
{lib} {lib++;}
{id} {id++;}
{key} {key++;}
{inti} {inti++;}
{float} {float++;}
{ao} {ao++;}
{lo} {lo++;}
{ro} {ro++;}
{asn} {asn++;}
{loop} {loop++;}
{char} {char++}
{cdn} {cdn++;}
{com} {com++;}
{fun} {fun++;}

.

%%

int yywrap(){

return 1;

}

int main()
{
    yyin=freopen("in.txt","r",stdin);
    yyout=freopen("out.txt","w",stdout);
    yylex();
    printf("\nNo. of header files: %d",head);
    printf("\nNo. of library functions: %d",lib);
    printf("\nNo. of identifiers: %d",id);
    printf("No. of keywords: %d",key);
	printf("\nNo. of integer numbers: %d",inti);
printf("\nNo. of float numbers: %d",float);
printf("\nNo. of arithmatic operation: %d",ao);
printf("\nNo. of logical operation: %d",lo);
printf("\nNo. of relational operation: %d",ro);
printf("\nNo. of assignment operation: %d",asn);
printf("\nNo. of loops: %d",loop);
printf("\nNo. of character: %d",char);
printf("\nNo. of conditional statements: %d",cnd);
printf("\nNo. of multiple line comments: %d",com);	
printf("\nNo. of user defined functions: %d",fun);     
    fclose(yyin);
    fclose(yyout);
    return 0;

}