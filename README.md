SharpMake
======
##### A .NET Makefile system, that uses JSON for Makefile structuring.
A far from finished C# Makefile system mainly for personal use. This application uses Json.Net (https://github.com/JamesNK/Newtonsoft.Json)

---

To do the inital compilation of sharpmake, run:
```
Linux/Mac OSX: mcs code/smake.cs code/smake_data.cs /reference:libs/Newtonsoft.Json.dll -o smake.exe; sudo mkbundle smake.exe libs/Newtonsoft.Json.dll -o /bin/smake; sudo chmod +x /bin/smake

Windows: csc code/smake.cs code/smake_data.cs /reference:libs/Newtonsoft.Json.dll -o smake.exe # NOT TESTED
```
OR use build 0.5 from the releases, and run:
```
Linux: mkdir build; smake [Makefile_legacy]; cp build/smake.exe smake.exe; mono smake.exe all; rm smake.exe;
```

To compile software with smake, run `smake (target)`.
_You can leave 'target' blank, if you do it will use the default target. Which is the first target on the target list._
_In other words, target 0._

Feel free to look at the [Makefile](https://github.com/Member1221/sharpmake/blob/master/Makefile) for reference.

## Check out the [Wiki](https://github.com/Member1221/sharpmake/wiki) for usage help, etc!


---

Todo
======
* Command arguments
  * --outputdir
  * --arch
  * --binref
  * --asmref
  * --pkgref
* Features
  * File linking (non .net)
  * package referancing
  * Sequencial export naming
  * unsafe code switching
  * platform selection
