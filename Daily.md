
# protobuf wire type


<table>
  <thead>
    <tr>
      <th>type</th>
      <th>meaning</th>
      <th>used for</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>Varint</td>
      <td>int32, int64, uint32, uint64, sint32, sint64, bool, enum</td>
    </tr>
    <tr>
      <td>1</td>
      <td>64-bit</td>
      <td>fixed64, sfixed64, double</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Length-delimi</td>
      <td>string, bytes, embedded messages, packed repeated fields</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Start group</td>
      <td>Groups (deprecated)</td>
    </tr>
    <tr>
      <td>4</td>
      <td>End group</td>
      <td>Groups (deprecated)</td>
    </tr>
    <tr>
      <td>5</td>
      <td>32-bit</td>
      <td>fixed32, sfixed32, float</td>
    </tr>
  </tbody>
</table>

# 命令行 tips

* 使用gcc的预处理器处理其他文本：

```sh
gcc -P -E -x c a.lua
```
-P选项禁止linemarkers， -x c 让编译器把输入的文件按照C文件来处理
如有必要可以加上-C来保留C注释


* 查找空目录 find . -type d -empty

* 输出指定范围内的行到stdout:
    * head -n 115 lang_en.lua| tail -n 10
    * sed '1,5!d’ lang_en.lua
    * sed -n 106,118p lang_en.lua

* 如何对目录下的所有源文件中的标识符执行一次全局替换?

如:

```sh
find | xargs perl -i -p -e 's/X/Y/g' i: in-place p: 循环处理多行]
```
* 如何批量旋转+裁剪一组图片? 如果还要再在某个位置加上一个数字呢? convert (imagemagick)

* git update-index --assume-unchanged file/name.txt

# 系统工具

* valgrind工具: 内存检测 性能分析
* pprof 性能分析工具
* [OS X]otool 查看opcode, 反汇编结果:
```sh
otool -V -j -t a.out
```
* [Linux] gcc -g[0,1,2,3] 附加上调试信息，objdump -S 可以显示出源码和汇编指令

* [Linux] 环境变量LD_LIBRARY_PATH 可以设置运行时的so搜索路径
* [Linux] ldd exe 查看文件依赖的so库


# 日常操作

* Windows系统可以装一个shell右键菜单扩展来快速在当前目录打开命令行
* 是否遇到过中英文标点符号的麻烦? 现代输入法都有选项可以设置中文状态下使用英文标点的
