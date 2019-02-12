# Hyper-graph Matching

This is a **MATLAB** implementation of hyper-graph matching for image correspondences as presented in [Game theoretic hypergraph matching for multi-source image correspondences](https://www.sciencedirect.com/science/article/pii/S0167865516301738).

## Environment

The code has been tested on **Windows 7** (64-bit) operating system (OS) with **MATLAB2013a**.

## Usage

Execute `siftWin32.exe` (**Windows** OS is required) before running the hyper-graph matching code.

Run `run_matching.m` on MATLAB for image correspondences based on hyper-graph matching.

Note: Tuning **parameters** (i.e., `distRatio`, `imresizerate1` and `imresizerate2`) to larger value (less than 1) will generate more key points and result in low matching speed.

Note: The running time reported in our paper dose not include the time of establishing hyper-graphs (i.e., the time of computing hyper-edges).

## Citation

Please cite the following paper in your work when using this implementation:

    @Article{hz17HypergraphMatch,
      title      = {Game theoretic hypergraph matching for multi-source image correspondences},
      author     = {Zhang, He and Ren, Peng},
      journal    = {Pattern Recognition Letters},
      volume     = {87},
      pages      = {87--95},
      year       = {2017},
      publisher  = {Elsevier}
    }

<i>Last updated: 12/02/2019</i>
