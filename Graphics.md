# 图形学相关知识点

## Inkscape SVG CSS 学习笔记

原来在css规范中,px 是绝对大小的单位, 1px等于 1/96英寸.

另外,由于自己平时几乎完全不使用,(除了知道显示器的29寸是指对角线长度29英寸之外),所以对英制
长度单位完全不了解. 但设计中还经常遇见的,学习一下

1英寸严格等于2.54cm.

1码(yd) = 3 英尺(ft) = 36英寸(in) = 0.9144米

1英尺 = 12英寸 = 30.48厘米

CSS3中定义的绝对长度单位:


<div>
<!--StartFragment-->

unit | name | equivalence | notes
-- | -- | -- | --
cm | centimeters | 1cm = 96px/2.54
mm | millimeters | 1mm = 1/10th of 1cm
Q | quarter-millimeters | 1Q = 1/4th of 1mm
in | inches | 1in = 2.54cm = 96px
pc | picas | 1pc = 1/6th of 1in | 1pc = 12pt, 1pica ~= 4.233cm (2.54cm /6 ~= 0.42333333333333334)
pt | points | 1pt = 1/72th of 1in | 推荐打印设备使用; 字体的常用单位. 
px | pixels | 1px = 1/96th of 1in

<!--EndFragment-->
</div>


## 仿射变换

齐次坐标空间

## 贝塞儿曲线

二次/三次 特点

应用 true type, 矢量图, 曲面
