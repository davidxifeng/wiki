# 编译器之clang/llvm

clang有一个神奇的选项：

``` zsh
clang -### Print (but do not run) the commands to run for this compilation.
```

如：

```
clang -### simple.c
Apple LLVM version 7.3.0 (clang-703.0.31)
Target: x86_64-apple-darwin15.4.0
Thread model: posix
InstalledDir: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang" "-cc1" "-triple" "x86_64-apple-macosx10.11.0" "-Wdeprecated-objc-isa-usage" "-Werror=deprecated-objc-isa-usage" "-emit-obj" "-mrelax-all" "-disable-free" "-disable-llvm-verifier" "-main-file-name" "simple.c" "-mrelocation-model" "pic" "-pic-level" "2" "-mthread-model" "posix" "-mdisable-fp-elim" "-masm-verbose" "-munwind-tables" "-target-cpu" "core2" "-target-linker-version" "264.3.102" "-dwarf-column-info" "-resource-dir" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.3.0" "-isysroot" "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk" "-fdebug-compilation-dir" "/Users/david/" "-ferror-limit" "19" "-fmessage-length" "130" "-stack-protector" "1" "-fblocks" "-fobjc-runtime=macosx-10.11.0" "-fencode-extended-block-signature" "-fmax-type-align=16" "-fdiagnostics-show-option" "-fcolor-diagnostics" "-o" "/var/folders/16/9bhbk2257816qv20g3y5jsk80000gn/T/simple-35320c.o" "-x" "c" "simple.c"
 "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ld" "-demangle" "-dynamic" "-arch" "x86_64" "-macosx_version_min" "10.11.0" "-syslibroot" "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk" "-o" "a.out" "/var/folders/16/9bhbk2257816qv20g3y5jsk80000gn/T/simple-35320c.o" "-lSystem" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/7.3.0/lib/darwin/libclang_rt.osx.a"

```


# Lua源码学习

* api的返回值，成功返回0，各种失败原因返回其他非零值（或者负值），成功的值只有一个，失败的情况有多种；调用处也可以这样写`f() || g();`。

* 一个函数在多个场景下有不同的用法,可以使用宏来给函数定义多个名字,在不同的场景使用不同的名字以使代码更加清晰易懂.如:

```C
/* from stack to (same) stack */
#define setobjs2s	setobj
/* to stack (not from same stack) */
#define setobj2s	setobj
```
