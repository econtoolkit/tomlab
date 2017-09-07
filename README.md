# Tutorials and Extensions for Tomlab
This repository contains examples of using tomlab and auto-differentiation.  To use it, you will need to install Tomlab with a license.  The tutorial slides are in [/tutorial/tomlab_AD_presentation.pdf](https://github.com/econtoolkit/tomlab/raw/master/tutorial/tomlab_AD_presentation.pdf) and the files are in the /tutorial subfolder.

## Setup
You will need to download tomlab and get a license file.
* Download and install the version for your operating system
   * http://tomopt.com/dist/tomlab-win64-setup.exe
   * http://tomopt.com/dist/tomlab-osx64-clang-setup.dmg
* Put your tomlab.lic in the main installation folder of tomlab (i.e. the one with `startup.m` in it)
   * If you are using a UBC license of Matlab, you can use the Economics department license file from http://jesseperla.com/tomlab/tomlab.lic
   * UBC economics students can install the license from https://it.ubc.ca/services/desktop-print-services/software-licensing/matlab
* To use Tomlab in your matlab code, you have two choices:
   1. Execute the `startup.m` matlab file in the tomlab root directory prior to using the library
   2. Add the tomlab root directory to the usual matlab paths with `Set Path`.  Matlab will then execute this `startup.m` automatically when you run matlab and you never need to worry about it again. However, this will slow down the startup time for matlab.
* Read through the slides in [/tutorial/tomlab_AD_presentation.pdf](https://github.com/econtoolkit/tomlab/raw/master/tutorial/tomlab_AD_presentation.pdf)

## Licenses within Tomlab
Tomlab has an abstract method to create an optimization `problem`, and makes it easy to swap out which optimizer you are using and find the best. For example, given a `Prob` you could choose `tomRun('knitro', Prob)` vs. `tomRun('npsol', Prob)`

At UBC, the packages we have licenses for are:
* **Tomlab Base**: Tomlab has created some of their own high quality libraries (and wrapping open-source ones, such as the TSQR algorithm)
* **SOL (i.e NPSOL, SNOPT, NLSSOL)**: General package of linear and nonlinear optimizers and solvers.
* **Knitro**: Good alternative to SOL ones, especially for MPEC problems.  Has complementarity conditions
* **CGO**:  costly global optimizer http://tomopt.com/tomlab/optimization/costly.php 
* **LGO**: global optimization and costly global with/without derivatives: http://tomopt.com/tomlab/optimization/glb.php 
* **MAD**: auto-differentiation, used within other libraries

   
## Key Links for Documentation
Tomlab has superb documentation and plenty of examples.
* The best starting point is http://tomopt.com/docs/TOMLAB_QUICKGUIDE.pdf
   * The key first step is to determine type of problem you have.  For example,
   * Nonlinear optimization is an NLP problem, so go to that section in the document
   * When trying to find a solution to a nonlinear system of equations, you will typically want to use constrained nonlinear least squares, NLLS
   * Unconstrained global optimization is GLB
   * Nonlinear mixed complementarity problems are MPC
* Tomlab has this built right into all of its routines, and it will usually speed things up by an order of magnitude.  All you need to do is set the ADObj and ADCons on your problem before using tomRun and it will take care of this.  Go to page 72 of the quickguide
* The more complete user's guide is https://tomopt.com/docs/TOMLAB.pdf
* The full set of documentation is in http://tomopt.com/tomlab/download/manuals.php, but you will rarely need them unless you are looking to tweak settings for a particular optimizer/solver.
   
