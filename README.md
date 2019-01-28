# Hyper-graph Matching

This is the **MATLAB** implementation of hyper-graph matching of the paper [Game theoretic hypergraph matching for multi-source image correspondences](https://www.sciencedirect.com/science/article/pii/S0167865516301738) pubilised on <i>Pattern Recognition Letters</i>.

# Environment

The code has been tested on **Windows 7** OS (64-bit), using **MATLAB2013a** software.

# Compiling

Execute `siftWin32.exe` (**Windows** OS is required) before running the hyper-graph matching code.

# Running

Run the `run_matching.m` file on MATLAB.

Note: Tuning parameters (i.e., `distRatio`, `imresizerate1` and `imresizerate2`) to large value (less than 1) will generate more key points and result in low matching speed.

Note: The running time reported in our paper dose not include the establishment of hyper-graphs (i.e., the computational time of constructing hyper-edges).

# Citation

This MATLAB implementation is provided for research purposes only. If you use the code in your research work, please cite the following paper:

    @Article{hz17HypergraphMatch,
      title      = {Game theoretic hypergraph matching for multi-source image correspondences},
      author     = {Zhang, He and Ren, Peng},
      journal    = {Pattern Recognition Letters},
      volume     = {87},
      pages      = {87--95},
      year       = {2017},
      publisher  = {Elsevier}
    }

<i>Last updated: 19/01/2019</i>
