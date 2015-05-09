
# 命令行 tips

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
* 如何批量旋转+裁剪一组图片? 如果还要再在某个位置加上一个数字呢?

使用 convert (imagemagick)

* git update-index --assume-unchanged file/name.txt 这条命令可以让git忽略添加到仓库中,已经改动但暂时不需要提交的文件

# 神兵谱

* valgrind工具: 内存检测 性能分析
* pprof 性能分析工具
* otool 查看opcode, 反汇编结果:
```sh
otool -V -j -t a.out
```


# 日常操作

* Windows系统可以装一个shell右键菜单扩展来快速在当前目录打开命令行
* 是否遇到过中英文标点符号的麻烦? 现代输入法都有选项可以设置中文状态下使用英文标点的
