/*
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Written (W) 2009 Soeren Sonnenburg
 * Copyright (C) 2009 Fraunhofer Institute FIRST and Max-Planck-Society
 */

%define DOCSTR
"The `Clustering` module gathers all clustering methods available in the SHOGUN toolkit."
%enddef

%module(docstring=DOCSTR) Clustering
#undef DOCSTR

/* Documentation */
%feature("autodoc","0");

#ifdef HAVE_DOXYGEN
#ifndef SWIGRUBY
%include "Clustering_doxygen.i"
#endif
#endif

#ifdef HAVE_PYTHON
%feature("autodoc", "get_radi(self) -> numpy 1dim array of float") get_radi;
%feature("autodoc", "get_centers(self) -> numpy 2dim array of float") get_centers;
%feature("autodoc", "get_merge_distance(self) -> [] of float") get_merge_distance;
%feature("autodoc", "get_pairs(self) -> [] of float") get_pairs;
#endif

/* Include Module Definitions */
%include "SGBase.i"
%include "Features_includes.i"
%include "Distance_includes.i"
%include "Clustering_includes.i"
%include "Preprocessor_includes.i"
%include "Distribution_includes.i"
%include "Library_includes.i"
%include "Kernel_includes.i"

%import "Features.i"
%import "Distance.i"

/* Remove C Prefix */
%rename(DistanceMachine) CDistanceMachine;
%rename(Hierarchical) CHierarchical;
%rename(KMeans) CKMeans;

/* Include Class Headers to make them visible from within the target language */
%include <shogun/machine/Machine.h> 
%include <shogun/machine/DistanceMachine.h>
%include <shogun/clustering/KMeans.h>
%include <shogun/clustering/Hierarchical.h>
