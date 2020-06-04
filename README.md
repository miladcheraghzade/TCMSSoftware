# Project Name : TCMSSoftware
Tendons Condition Monitoring Software

Description:

  Tendons are one-dimensional axially tensioned members which carry tensile force through their length with different geometrical and boundary conditions. Damages in post-tensioning structures cause distress in the post-tensioning system which result in loss of integrity and reduction in structure safety.  Tensile force bearing elements are the most important part of post-tensioning system. Therefore, tension estimation in these elements plays an important role in condition monitoring. This software allows to run a complete process with three main goals in four tabs and three sub-tabs: pre-processing of the input data, system identification for operational modal analysis and tension estimation. In the first tab input data can be observed in both time and frequency domain simultaneously, while best filter settings can also be selected. In the second tab the filter and base line correction algorithms can be applied on the whole data channels. In the third tab Peak Picking algorithm is used for system Identification and automatic modal frequencies extraction. Finally, in the last tab two different approach are used for tension estimation using mode shape functions with multiple measurement and pre-determined formulas as beam and string theory which are fully explored in previous research. Moreover, Lest-Square generated functions and settings are also embedded in this tab from MATLAB's Curve Fitting Toolbox for regression purposes. To validate the applicability of TCMS finite element model's modal parameters are identified through operational and analytical modal analysis. Then, the identified mode shape ratios and frequencies are used for tension estimation. This work as a comparative study demonstrate the power of TCMS for sensitivity analysis with proper pre-processing, tackling parameter issues for tension estimation and finally effects of accurate or inaccurate modal analysis on tension estimation.  

Table of Contents:
  Pre-Processing
  Data cleaning
  Base Line Correction
  System Identification (Peak Picking Algorithm)
  Tensile Force Estimation
  
 ![](G:/TCMS/PicForGitHub/fig1.png)
  
  
 MIT License

Copyright (c) [2020] [TCMS]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


