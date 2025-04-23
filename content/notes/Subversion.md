


* [2017-01-12] svn没有像git hg一样识别忽略文件的功能,这点非常不好.
  (从working copy复制文件重建仓库的时候,不能保留原svn仓库的忽略属性)

  可用如下方法来模拟此功能:
  创建忽略文件,然后手动执行`svn propset svn:ignore -F ignorelist.txt .`
  设置忽略属性.
