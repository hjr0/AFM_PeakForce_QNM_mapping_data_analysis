# AFM_PeakForce_QNM_mapping_data_analysis
Run Modudlus_BEC.m when Bottom Effect Cone Correction (BECC) is needed, otherwise run Modudlus_NonBEC.m instead. Calibration of 'Height' should be done elsewhere in both cases.

Raw data should be readable file (here .txt) with headline as follows:
Height(nm)	Peak_Force_Error(nN)	Sneddon_Modulus(MPa)	Deformation(nm)

HOW TO USE:
1. Put raw data (bulk) with .m script under the same directory (here data are from Bruker AFM devices);
2. Run Modulus*.m scripts;
3. Circle out ROIs using your mouse by left clicking. End selection of one ROI by middle clicking and begin next circling out on the same graph. End capturing by right click.

Notes:
1. result.out contains mean 'Height' and 'Modulus' of ROIs;
2. data.out contains all pixel-to-pixel 'Modulus' data of ROIS;
3. ROIs are recorded in *.cxy and *.png.

IF scripts in this thread were used, please cite:
Hu, J., Chen, S., Huang, D. et al. Biophys Rep (2020). https://doi.org/10.1007/s41048-019-00103-9
