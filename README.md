# Hypergraph Matching

[![image](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/HeZhang1994/hypergraph-matching/blob/master/LICENSE)
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()
[![image](https://img.shields.io/badge/status-stable-brightgreen.svg)]()
[![image](https://img.shields.io/badge/build-passing-brightgreen.svg)]()

This is a **MATLAB** implementation of **hypergraph matching** for multi-source image correspondences. 

The method is presented in the paper: [Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences).

## Dependency

* __sift win32__

To install SIFT libraries on **Windows** system (32-bit/64-bit), executing `siftWin32.exe` software.

## Usage

1. Prepare pairs of multi-source images in a folder (e.g., `images/`).

2. Specify parameters (`distRatio`, `imresizerate1` and `imresizerate2`) in `run_matching.m` (see comments).

3. Run `run_matching.m` to match key points of multi-source images via hypergraph matching.

Notes:

- Tuning `distRatio` to larger value in [0, 1] will generate more key points and lead to lower matching speed.

- The running time does not include establishing hypergraphs and calculating the weight of edges.

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
