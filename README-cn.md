# 超图匹配

[![image](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/HeZhang1994/hypergraph-matching/blob/master/LICENSE)
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()
[![image](https://img.shields.io/badge/status-stable-brightgreen.svg)]()

[*English Version*](https://github.com/HeZhang1994/hypergraph-matching/blob/master/README.md) | [*中文版*](https://github.com/HeZhang1994/hypergraph-matching/blob/master/README-cn.md)

基于MATLAB实现的针对多源图像对准的超图匹配算法。

该算法发表于论文：[Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences)。

## 依赖项

* __sift win32__

运行`siftWin32.exe`软件，安装SIFT库于**Windows**系统（32位或64位）。

## 使用

1. 准备几对多源图像于一文件夹（例如，`images/`）。

2. 设置`run_matching.m`中的参数`distRatio`、`imresizerate1`和`imresizerate2`（详细信息参见注释）。

3. 运行`run_matching.m`，通过超图匹配算法匹配每对多源图像中的关键点。

说明：

- 将`distRatio`调节为[0, 1]范围内一个很大的值，会产生更多的关键点，并降低匹配速度。

- 报告的运行时间不包括超图的构建和边的权值的计算。

## 引用

如果您使用了该项目，请在您的工作中引用如下论文。

    @Article{zhang17hypergraphmatch,
      title      = {Game theoretic hypergraph matching for multi-source image correspondences},
      author     = {Zhang, He and Ren, Peng},
      journal    = {Pattern Recognition Letters},
      volume     = {87},
      pages      = {87--95},
      year       = {2017},
      publisher  = {Elsevier}
    }

<br>

<i>如果您对该项目有任何问题，请报告issue，我将会尽快回复。</i>

<i>如果该项目对您有帮助，请为其加星支持哈，非常感谢。^_^</i>
