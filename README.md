# Hyper-graph Matching
This is a simple version of the MATLAB code for hyper-graph matching of paper [Game theoretic hypergraph matching for multi-source image correspondences](https://www.sciencedirect.com/science/article/pii/S0167865516301738).

# Citation
All code is provided for research purposes only. If you use the code in your research work, please cite the following paper: 

    @Article{hz17HypergraphMatch, 
      title      = {Game theoretic hypergraph matching for multi-source image correspondences}, 
      author     = {Zhang, He and Ren, Peng}, 
      journal    = {Pattern Recognition Letters}, 
      volume     = {87}, 
      pages      = {87--95}, 
      year       = {2017}, 
      publisher  = {Elsevier} 
    } 

# Environment
The code has been tested on a PC machine with Windows 7/8 system (32/64-bit), using MATLAB2013a. 

# Compiling
Execute the `siftWin32.exe` file in Windows operating system before running the hyper-graph matching code.

# Running
Run the `run_matching.m` file in MATLAB.

Change the parameters `distRatio`, `imresizerate1` and `imresizerate2` to large value (less than 1) will generate more key points and lead to low matching speed. 

It should be noted that the runtime reported in our paper did not include the establishment of hyper-graphs (i.e., the cost time of computing weights of hyper-edges).
