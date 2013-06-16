I just added syntax highlighting support on my blog, and wanted to try it out. I used [Highlight.js](http://softwaremaniacs.org/soft/highlight/en/) to highlight the code, and then added line numbers to make it extra awesome. Here are a couple of random code snippets from [_99 Bottles of Beer_](http://99-bottles-of-beer.net/).

```haskell
--99 bottles of beer on the wall song
--x holds the remaining number of bottles.
--The strings in b1 and b2 are based upon the current value of x.
--b3 capitalizes b1
--line2 depends on x and is built from b2 except in the last verse
main = (putStr (unlines
        [b3++" of beer on the wall, "++b1++" of beer.\n"++line2++" of beer on the wall.\n" |
         x<-[99,98..0],
         b1<-["no more bottles",show x++" bottles",show x++" bottle"],
         b2<-["no more bottles",show (x-1)++" bottles", show (x-1)++" bottle"],
         b3<-[b1, "N"++tail b1],
         line2<-["Take one down and pass it around, "++b2,
                 "Go to the store and buy some more, 99 bottles"],
         ((b1 == show x++" bottle") == (x == 1)), ((b1 == "no more bottles") == (x == 0)),
         ((last b2 == 'e') == (x == 2)), (head b2 == 'n') == (x == 1),
         ((b3 == "N"++tail b1) == (head b1 == 'n')),
         ((head line2 == 'G') == (x == 0))]))
```

```cmake
# cmake is a nice, cross-platform autotools replacement. Just give
# it a try.
#
# CMakeLists.txt for the 99-bootles-of-beer song. ;o)
#
# Copy the file to a directory of your choice and call cmake <PathToCMakeLists.txt>.
# Remember that cmake creates some files on execution, so using a clean, temporary
# directory makes it more easy to remove them all.
#
# Have a lot of fun. ;)

MACRO (TRINK_BEER)
  
  MESSAGE ("")
  MESSAGE ("${BOTTLE_COUNT} bottles of beer on the wall, ${BOTTLE_COUNT} bottles of beer.")

  MATH(EXPR BOTTLE_COUNT "${BOTTLE_COUNT} - 1")

  IF (BOTTLE_COUNT GREATER 0)
    MESSAGE ("Take one down, pass it around, ${BOTTLE_COUNT} bottles of beer on the wall.")
    TRINK_BEER()
  ELSE (BOTTLE_COUNT GREATER 0)
    MESSAGE ("Take one down, pass it around, no more bottles of beer on the wall.")
    MESSAGE ("")
    MESSAGE ("No more bottles of beer on the wall, no more bottles of beer.")
    MESSAGE ("Go to the store and buy some more, 99 bottles of beer on the wall.")
    MESSAGE ("")
  ENDIF (BOTTLE_COUNT GREATER 0)

ENDMACRO (TRINK_BEER)

# Start with drinking. *hicks*
SET (BOTTLE_COUNT 99)
TRINK_BEER()
```

```
// C++ version of 99 Bottles of beer
// programmer: Tim Robinson timtroyr@ionet.net
// Corrections by Johannes Tevessen

#include <iostream>
using namespace std;

int main()
    {
    int bottles = 99;
    while ( bottles > 0 )
        {
        cout << bottles << " bottle(s) of beer on the wall," << endl;
        cout << bottles << " bottle(s) of beer." << endl;
        cout << "Take one down, pass it around," << endl;
        cout << --bottles << " bottle(s) of beer on the wall." << endl;
        }
    return 0;
    }
```

```php
<?php
	
	$res = 0;
	for ($i = 0; $i < 100; $i++) {
		$res += $i;
	}

	echo $i;

?>
```

I like it! One more test. Let's display some language that Highlight.js doesn't know about. [_Befunge_](http://catseye.tc/projects/befunge93/) is one of my favorite esoteric programming languages:

```befunge
v v0\1:\1:{CODE}{CODE}\!:p15-<     Bottles of Beer for Befunge
0 \ {befunge} >" ekaT">v   written by Brian Raiter, 5/97
0>>.0"llaw eht no "v<#,:   breadbox@muppetlabs.com
"\,     >"eno"^>0 #"^1^_v
c1,>51g#^_"ti"^. >vr :  $
"::^" down, pass "<e    5
>^|\*25,<^     # i e ^g1< 
  ,>052*":dnuor t"vbv:<
v0_^    .      , ^< " "
>52*".ll"v   >,^   fb e
v<v<v_$!|>"aw eht no r"v
""" ,:  >" ;"^      f ^<@
meo >^"bottle"<    "o   $
o m^"re:"<v  _^#g15<  v_^
s""  >52*^>"s"^v"les"<,:
"^<  ^"99 bott"<    >^>^<
>" yub ,erots eht ot oG"^
```

The highlighting on that example is far from optimal, but does it even matter in an esoteric language like Befunge? :)  
Next up is LaTeX support.