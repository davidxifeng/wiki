## Xcode 漫游

Xcode工程的默认中间文件的根目录在这里:

```
~/Library/Developer/Xcode/DerivedData/
```

根目录下面是各个工程名名字唯一化后的工程根目录,

`tree ~/Library/Developer/Xcode/DerivedData/machoview-dbcczvujbmfmalcuisyjazjmistp/`
的输出(删去若干内容)

```

├── Build
│   ├── Intermediates
│   │   ├── ArchiveIntermediates
│   │   │   └── MachOView
│   │   │       ├── BuildProductsPath
│   │   │       │   └── Release
│   │   │       │       ├── MachOView.app -> /Users/quinn/Library/Developer/Xcode/DerivedData/machoview-dbcczvujbmfmalcuisyjazjmistp/Build/Intermediates/ArchiveIntermediates/MachOView/InstallationBuildProductsLocation/Applications/MachOView.app
│   │   │       │       ├── MachOView.app.dSYM
│   │   │       │       │   └── Contents
│   │   │       │       │       ├── Info.plist
│   │   │       │       │       └── Resources
│   │   │       │       │           └── DWARF
│   │   │       │       │               └── MachOView
│   │   │       │       └── README
│   │   │       ├── IntermediateBuildFilesPath
│   │   │       │   └── machoview.build
│   │   │       │       └── Release
│   │   │       │           └── MachOView.build
│   │   │       │               ├── Layout-PartialInfo.plist
│   │   │       │               ├── MachOView-all-non-framework-target-headers.hmap
│   │   │       │               ├── MachOView-all-target-headers.hmap
│   │   │       │               ├── MachOView-generated-files.hmap
│   │   │       │               ├── MachOView-own-target-headers.hmap
│   │   │       │               ├── MachOView-project-headers.hmap
│   │   │       │               ├── MachOView.hmap
│   │   │       │               ├── MainMenu-PartialInfo.plist
│   │   │       │               ├── Objects-normal
│   │   │       │               │   └── x86_64
│   │   │       │               │       ├── X86Module.d
│   │   │       │               │       ├── X86Module.dia
│   │   │       │               │       ├── X86Module.o
│   │   │       │               │       ├── main.d
│   │   │       │               │       ├── main.dia
│   │   │       │               │       ├── main.o
│   │   │       │               ├── Preferences-PartialInfo.plist
│   │   │       │               ├── Script-3C2656DF11F8E35C002D8A1C.sh
│   │   │       │               └── dgph
│   │   │       └── PrecompiledHeaders
│   │   │           ├── Prefix-bilqndznpwophddbpyhpigpljhfc
│   │   │           │   ├── Prefix.pch.d
│   │   │           │   ├── Prefix.pch.data
│   │   │           │   ├── Prefix.pch.dia
│   │   │           │   ├── Prefix.pch.pch
│   │   │           │   └── Prefix.pch.pch.hash-criteria
│   │   │           └── Prefix-hkpmiemdtdwptjfrnioemufcuuaw
│   │   │               ├── Prefix.pch.d
│   │   │               ├── Prefix.pch.data
│   │   │               ├── Prefix.pch.dia
│   │   │               ├── Prefix.pch.pch
│   │   │               └── Prefix.pch.pch.hash-criteria
│   │   ├── PrecompiledHeaders
│   │   │   ├── Prefix-bpuosikxsuwdvgcukmspftuguyrc
│   │   │   │   ├── Prefix.pch.d
│   │   │   │   ├── Prefix.pch.data
│   │   │   │   ├── Prefix.pch.dia
│   │   │   │   ├── Prefix.pch.pch
│   │   │   │   └── Prefix.pch.pch.hash-criteria
│   │   │   ├── Prefix-dphwkquocguvmreehkzvvonnvhlf
│   │   │   │   ├── Prefix.pch.d
│   │   │   │   ├── Prefix.pch.data
│   │   │   │   ├── Prefix.pch.dia
│   │   │   │   ├── Prefix.pch.pch
│   │   │   │   └── Prefix.pch.pch.hash-criteria
│   │   │   ├── Prefix-ehcyppfqlwzfvscxdzvtynqxssjm
│   │   │   │   └── Prefix.pch.pch.hash-criteria
│   │   │   └── Prefix-fogkvvyfbmlgaiahwllkkmsedhgh
│   │   │       └── Prefix.pch.pch.hash-criteria
│   │   └── machoview.build
│   │       └── Debug
│   │           └── MachOView.build
│   │               ├── Layout-PartialInfo.plist
│   │               ├── MachOView-all-non-framework-target-headers.hmap
│   │               ├── MachOView-all-target-headers.hmap
│   │               ├── MachOView-generated-files.hmap
│   │               ├── MachOView-own-target-headers.hmap
│   │               ├── MachOView-project-headers.hmap
│   │               ├── MachOView.hmap
│   │               ├── MainMenu-PartialInfo.plist
│   │               ├── Objects-normal
│   │               │   └── x86_64
│   │               │       ├── main.d
│   │               │       ├── main.dia
│   │               │       ├── main.o
│   │               ├── Preferences-PartialInfo.plist
│   │               ├── Script-3C2656DF11F8E35C002D8A1C.sh
│   │               └── dgph
│   └── Products
│       └── Debug
│           ├── MachOView.app
│           │   └── Contents
│           │       ├── Info.plist
│           │       ├── MacOS
│           │       │   └── MachOView
│           │       ├── PkgInfo
│           │       └── Resources
│           │           ├── English.lproj
│           │           │   ├── Credits.rtf
│           │           │   ├── InfoPlist.strings
│           │           │   ├── Layout.nib
│           │           │   ├── MainMenu.nib
│           │           │   └── Preferences.nib
│           │           ├── greenApple.icns
│           │           ├── redApple.icns
│           │           └── stop.png
│           └── README
├── Index
│   ├── Debug
│   │   └── macosx10.10-x86_64
│   │       └── machoview.xcindex
│   │           ├── db.xcindexdb
│   │           ├── db.xcindexdb-shm
│   │           ├── db.xcindexdb-wal
│   │           ├── db.xcindexdb.strings-cmp
│   │           ├── db.xcindexdb.strings-dir
│   │           ├── db.xcindexdb.strings-file
│   │           ├── db.xcindexdb.strings-moduleurl
│   │           ├── db.xcindexdb.strings-res
│   │           └── db.xcindexdb.strings-sym
│   └── PrecompiledHeaders
│       ├── Prefix-ahqmemgblsfavuhkkikktsgzrbaa_ast
│       │   ├── Prefix.pch.pch
│       │   ├── Prefix.pch.pch.hash-criteria
│       │   └── Prefix.pch.pch.target
│       ├── Prefix-byiwozcjezhqbvcqvwhdvvqjjfvx_ast
│       │   ├── Prefix.pch.pch
│       │   ├── Prefix.pch.pch.hash-criteria
│       │   └── Prefix.pch.pch.target
│       ├── Prefix-ejqrfurbrtvicnaxzdhoqacxdayf_ast
│       │   └── Prefix.pch.pch.hash-criteria
│       ├── Prefix-fuixcolfqrnbvxavylyofnidhtyy_ast
│       │   └── Prefix.pch.pch.hash-criteria
│       ├── Prefix-fvlenxsybbznzaghxwvkcyyzsypr_ast
│       │   └── Prefix.pch.pch.hash-criteria
│       └── Prefix-hffgefcmsutobscrmghnjuaejiai_ast
│           ├── Prefix.pch.pch
│           ├── Prefix.pch.pch.hash-criteria
│           └── Prefix.pch.pch.target
├── Logs
│   ├── Build
│   │   ├── Cache.db
│   │   ├── D87BEE3F-D43E-4E2F-9445-9D43876214FE.xcactivitylog
│   │   └── F387158C-9F03-4861-87B7-745795D785A9.xcactivitylog
│   ├── Debug
│   │   ├── B9953DE0-82A4-47B2-93DC-96820C3C5463.xcactivitylog
│   │   └── Cache.db
│   ├── GPUDebuggerLog
│   ├── Install
│   ├── Issues
│   │   ├── B9AEAF65-B214-40CB-A0A5-EC078D0FD5D8.xcactivitylog
│   │   └── Cache.db
│   ├── SCM
│   └── Test
├── TextIndex
│   └── text-filter.idx
├── info.plist
└── scm.plist
56 directories, 359 files
```

其中,如果有编译单元(.c, .mm 源码文件)同名的,
Xcode会在同名文件后面加上标志串来区分开来,这让我想起来多年前某个ide没有处理这种
情况,导致后者覆盖前者,链接的时候符号找不到...
Build/Intermediates/nineke.build/
        Debug-iphonesimulator/nineke.dev.build/Objects-normal/i386

```
Objects-normal/i386/SimpleWebview-8B6C60AD4E83B966.d -- 文本文件, 本单元的依赖关系
Objects-normal/i386/SimpleWebview-8B6C60AD4E83B966.dia
Objects-normal/i386/SimpleWebview-8B6C60AD4E83B966.o
Objects-normal/i386/SimpleWebview-AFFCBF55FF363E94.d
Objects-normal/i386/SimpleWebview-AFFCBF55FF363E94.dia
Objects-normal/i386/SimpleWebview-AFFCBF55FF363E94.o
```
