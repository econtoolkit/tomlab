# Extensions for MAD
The files in this folder provide extensions to the auto-differentiation in MAD.
## Installation
* To install, add these to the `@fmad` folder of the MAD  distribution.  For example, if tomlab was installed in `C:\apps\tomlab\`, then add these to the `C:\apps\tomlab\mad\@fmad` folder
* After these have been tested, they should be sent to Tomlab support, at which point they might be optimized and added to the distribution.

## What sorts of functions can be added?
* In general, any functions where the derivative can be calculated.  MAD will take care of the chain rule, etc.
* Many matlab functions which rearrange (e.g. `reshape`) work fine as well.
* If in doubt, ask Tomlab support.
* Surprisingly complex functions can be supported (in theory, at least).  See https://github.com/econtoolkit/tomlab/tree/master/examples/MAD for auto-differentiation of the solution to a linear system (i.e., differentiating given parametersn the matrix itself!)
