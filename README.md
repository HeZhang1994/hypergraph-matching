# Hyper-graph Matching
This is the MATLAB code for reproducing hyper-graph matching results of paper [Game theoretic hypergraph matching for multi-source image correspondences](https://www.sciencedirect.com/science/article/pii/S0167865516301738).

# Citation
All code is provided for research purposes only. If you use the code in your research work, please cite the following paper: 

    @article{hz17HyperGraphMatch, 
      title      = {Game theoretic hypergraph matching for multi-source image correspondences}, 
      author     = {H. Zhang and P. Ren}, 
      journal    = {Pattern Recognition Letters}, 
      volume     = {87}, 
      pages      = {87--95}, 
      year       = {2017}, 
      publisher  = {Elsevier} 
    } 

# Envirment
The code has been tested on a PC machine with Windows 7/8 system (32/64-bit), using MATLAB2013a. 

# Compiling
Execute the `siftWin32.exe` file in Windows operating system before running the hyper-graph matching code.

# Running
Run the `run_matching.m` file in MATLAB.

Change the parameters `distRatio`, `imresizerate1` and `imresizerate2` to large value (less than 1) will generate more key points and low matching speed. 

