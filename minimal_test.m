% Load Bio-Formats
pkg load bioformats

% Check the Bio-Formats version and initialize logging
[s, v] = bfCheckJavaPath()
bfInitLogging('INFO');

test_bfopen('tubhiswt-3D/tubhiswt_C0.ome.tif');

% Increase the debugging verbosity
javaMethod('setRootLevel', 'loci.common.DebugTools', 'DEBUG');

test_bfopen('tubhiswt-3D/tubhiswt_C0.ome.tif');