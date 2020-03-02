# Hypergraph Matching

[![image](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/HeZhang1994/hypergraph-matching/blob/master/LICENSE)
[![image](https://img.shields.io/badge/platform-windows-lightgrey.svg)]()
[![image](https://img.shields.io/badge/matlab-2013a-blue.svg)]()
[![image](https://img.shields.io/badge/status-stable-brightgreen.svg)]()

[*English Version*](https://github.com/HeZhang1994/hypergraph-matching/blob/master/README.md) | [*中文版*](https://github.com/HeZhang1994/hypergraph-matching/blob/master/README-cn.md)

This is a **MATLAB** implementation of the **hypergraph matching** algorithm for multi-source image correspondences. 

This algorithm is published in the paper: [Game theoretic hypergraph matching for multi-source image correspondences](https://www.researchgate.net/publication/305696390_Game_Theoretic_Hypergraph_Matching_for_Multi-source_Image_Correspondences).

## Dependency

* __sift win32__

Execute `siftWin32.exe` software to install SIFT libraries on **Windows** system (32-bit/64-bit).

## Usage

1. Prepare several multi-source image pairs in a folder (e.g., `images/`).

2. Set parameters (`distRatio`, `imresizerate1` and `imresizerate2`) in `run_matching.m` (see comments).

3. Run `run_matching.m` to match key points of multi-source image pairs via hypergraph matching algorithm.

Notes:

- Tuning `distRatio` to a larger value in [0, 1] will generate more key points and lower the matching speed.

- The reported running time does not include the establishment of hypergraphs and the calculation of edge weights.

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

<i>Please report an issue if you have any question about this repository, I will respond ASAP.</i>

<i>Please star this repository if you found its content useful. Thank you very much. ^_^</i>
