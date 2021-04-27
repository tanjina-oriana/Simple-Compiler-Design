%{
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>

int key=0, id=0, ao=0, lo=0, ro=0, asn=0, mark=0, head=0, lib=0, function=0, loop=0, cnd=0, integer=0, floatn=0, com=0;

%}

head "contain<"+[a-zA-Z]
lib "putin>"|"putout<"
key intr|character|loop|send|start|end|out|since|aslongas|fn
id [a-zA-Z]([a-zA-Z0-9])*
integer (-|\+)?[0-9]+
floatn [+-]?[0-9]+[.][0-9]+|[+-]?[.][0-9]+|[1-9]+e[+-][0-9]+
ao "+"|"-"|"*"|"/"|"++"|"--"|"**"|"//"|"^^"
lo [&][&]|[|][|]|[!]

ro [<]|[>]|[<][=]|[>][=]|[=][=]|[!][=]

asn [=]|[+][=]|[-][=]|[*][+]|[/][+]

mark ":"|"@"|"{"|"}"|"("|")"|"["|"]"|","|"%"|">"|"<"|"$"|"?"

loop "loop"+" "

cnd "whether"+" "|"or"+" "|"whetheror"+" "

com [@].*

function "fn"+" "


%%

{key} {key++;}

{id} {id++;}

{ao} {ao++;}

{lo} {lo++;}

{ro} {ro++;}

{asn} {asn++;}

{mark} {mark++;}

{head} {head++;}

{lib} {lib++;}

{function} {function++;}

{loop} {loop++;}

{cnd} {cnd++;}

{integer} {integer++;}

{floatn} {floatn++;}

{com} {com++;}

.

%%

int yywrap(){

return 1;

}

int main()
{
    yyin=freopen("inf.c","r",stdin);
    yyout=freopen("out1.txt","w",stdout);
    yylex();
	
    printf("No. of keywords: %d",key);
	printf("\nNo. of identifiers: %d",id);
	printf("\nNo. of arithmatic operation: %d",ao);
	printf("\nNo. of logical operation: %d",lo);
	printf("\nNo. of relational operation: %d",ro);
	printf("\nNo. of assignment operation: %d",asn);
	printf("\nNo. of markers: %d",mark);
	printf("\nNo. of header files: %d",head);
	printf("\nNo. of library functions: %d",lib);
	printf("\nNo. of user defined functions: %d",function);
	printf("\nNo. of loops: %d",loop);
	printf("\nNo. of conditional statements: %d",cnd);
	printf("\nNo. of integer numbers: %d",integer);
	printf("\nNo. of float numbers: %d",floatn);
	printf("\nNo. of single line comments: %d",com);
    
    fclose(yyin);
    fclose(yyout);
    return 0;

}