# Task 1.3

## Write a simple parser script that uses 1 env variable;
**Convert this:</br>
a,b;c^d"e}</br>
f;g,h!;i8j-</br>
To this:</br>
a,b,c,d,e,f,g,h,i,j</br>**

I had been trying some variations of using `IFS` to manipulate this symbols in the right way. But nothing worked.

As a result, my script works without an environment variable. (not taking into account some cheats)

![error](./image/1.3.2.jpg)

Screenshot was updated </br>
I decide to add `-e` option to remove some pipes `|`.
