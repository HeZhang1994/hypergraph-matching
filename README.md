# Hyper-graph Matching

[![image](https://img.shields.io/badge/license-MIT-lightgrey.svg)]()
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()
[![image](https://img.shields.io/badge/status-stable-brightgreen.svg)]()
[![image](https://img.shields.io/badge/build-passing-brightgreen.svg)]()

This is a **Matlab** implementation of **hyper-graph matching** based multi-source image correspondences. The formulation of this method was presented in [Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences).

## Usage

1. Execute `siftWin32.exe` (**Windows** OS is required) before running code.

2. Specify parameters `distRatio`, `imresizerate1` and `imresizerate2` in `run_matching.m`.

3. Run `run_matching.m` to match key points extracted in two multi-source images.

Notes:

- Tuning parameters to larger value (from 0 to 1) will extract more key points and result in lower matching speed.

- The running time of establishing hyper-graphs and computing hyper-edge weights is not counted in the paper.

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

<i>Last updated: 18/03/2019</i>
