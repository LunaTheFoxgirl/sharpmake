# sharpmake
Bad C# Makefile system, that uses JSON for Makefile structures.
A far from finished C# Makefile system mainly for personal use. This application uses Json.Net (https://github.com/JamesNK/Newtonsoft.Json)

To do the inital compilation of sharpmake, run:
```
mcs code/smake.cs /reference:libs/Newtonsoft.Json.dll -o smake.exe; sudo mkbundle smake.exe libs/Newtonsoft.Json.dll -o /bin/smake; sudo chmod +x /bin/smake
```

To do compilation (after inital compilation or smake installation) run
```
smake (target)
```
_You can leave 'target' blank, if you do it will use the default target. Which is the first target on the target list._
_In other words, target 0._
