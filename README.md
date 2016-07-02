# sharpmake
Bad C# Makefile system, that uses JSON for Makefile structures.
A far from finished C# Makefile system mainly for personal use. This application uses Json.Net (https://github.com/JamesNK/Newtonsoft.Json)

To do the inital compilation of sharpmake, run:
```
mcs code/smake.cs /reference:lobs/Newtonsoft.Json.dll -o smake.exe; sudo mkbundle smake.exe libs/Newtonsoft.Json.dll -o /bin/smake; sudo chmod +x /bin/smake
```
