# Hyper-graph Matching

[![image](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/HeZhang1994/hypergraph-matching/blob/master/LICENSE)
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()
[![image](https://img.shields.io/badge/status-stable-brightgreen.svg)]()
[![image](https://img.shields.io/badge/build-passing-brightgreen.svg)]()

This is a **Matlab** implementation of **hyper-graph matching** for multi-source image correspondences. 

The method is presented in [Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences).

## Dependency

* __sift win32__

Install SIFT libraries on **Windows** system (32-bit/64-bit) by executing `siftWin32.exe`.

## Usage

1. Prepare multi-source image pairs in a folder (e.g., `images/`).

2. Specify parameters (`distRatio`, `imresizerate1` and `imresizerate2`) in `run_matching.m` (see comments).

3. Run `run_matching.m` to match key points in two multi-source images via hyper-graph matching.

Notes:

- Tuning `distRatio` to larger value (0 to 1) will generate more key points and lead to lower matching speed.

- The running time of establishing hyper-graphs and calculating the weight of hyper-edges is not counted in the paper.

## Citation

Please cite the following paper if you used this implementation in your work.

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

<i>Please star this repository if you found its content useful. Thank you very much. ^_^</i>

<i>如果该程序对您有帮助，请为该程序加星支持哈，非常感谢。^_^</i>

<i>Last updated: 01/04/2019</i>
