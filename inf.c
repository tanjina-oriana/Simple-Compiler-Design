contain<stdio.h>
contain<string.h>


intr sub fn (intr n1, intr n2)
{
    intr n3:
    n3 = n1 - n2:
    send n3:
}

intr main()
{
 @ Finding maximum of two numbers
   

    intr n3,n4:
    putin>n3:
    putin>n4:
    whether (n3>=n4)
    {
        putout<"n3 is greater":
    }
    or {
        putout<"n4 is greater":
    }


    @ loop

    intr it = 10:
    loop begin:
    aslongas ( it >= 0 )
    {
       putout<"KUET" + i:
       i = i - 1:
       whether ( i == 6 )
       {
          out:
       }
    }
    end:
    send 0:

    @ Adding two numbers

    intr n1,n2:
    putin>n1:
    putin>n2:
    putout<n1 + n2:

   

    @ Use of if-else

    intr grade:
    putin>grade:
    whether (grade>=50 && grade<60)
    {
        putout<"B":
    }
    whetheror (grade>=60 && grade<70)
    {
        putout<"A":
    }
    or {
        putout<"A+":
    }

    @ function

 
    sub(6,4):


   send 0:

}
