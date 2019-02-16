# Hyper-graph Matching

[![image](https://img.shields.io/badge/license-MIT-lightgrey.svg)]()
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()

This is a **MATLAB** implementation for **hyper-graph matching** and image correspondences as presented in [Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences). 

## Usage

1. Execute `siftWin32.exe` (**Windows** OS is required) before running the hyper-graph matching code.

2. Run `run_matching.m` on MATLAB for image correspondences based on hyper-graph matching.

- Note: Tuning **parameters** (i.e., `distRatio`, `imresizerate1` and `imresizerate2`) to larger value (less than 1) will generate more key points and result in low matching speed.

- Note: The running time reported in our paper dose not include the time of establishing hyper-graphs (i.e., the time of computing hyper-edges).

## Citation

Please cite the following paper in your work when using this implementation.

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

<i>Please star this repository if you found its content useful. Thank you very much.</i>

<i>如果该程序对您有帮助，请为该程序加星支持哈，非常感谢。</i>

<i>Last updated: 16/02/2019</i>

