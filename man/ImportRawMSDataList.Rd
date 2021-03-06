% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preproc_utils.R
\name{ImportRawMSDataList}
\alias{ImportRawMSDataList}
\title{Import raw MS data}
\usage{
ImportRawMSDataList(dataset.meta, format = "png", dpi = 72,
  width = 9, par.cores = TRUE, plot = TRUE, bpis_name = "BPIS_",
  tics_name = "TICS_")
}
\arguments{
\item{dataset.meta}{Matrix, input the meta data for files containing
the raw MS spectra to be processed.}

\item{format}{Character, input the format of the image to create.}

\item{dpi}{Numeric, input the dpi of the image to create.}

\item{width}{Numeric, input the width of the image to create.}

\item{par.cores}{Logical, if true, the function will automatically 
set the number of parallel cores. If false, it will not.}

\item{plot}{Logical, if true the function will create BPIS and TICS plots.}

\item{bpis_name}{Character, input the name of the BPIS image to create.}

\item{tics_name}{Character, input the name of the TICS image to create.}
}
\description{
This function handles the reading in of 
raw MS data (.mzML, .CDF and .mzXML). Users must provide 
a matrix with meta information about file such that each file has the name,
file path, group class and extension type.
The function will output two chromatograms into the user's working directory, a 
base peak intensity chromatogram (BPIC) and a total ion 
chromatogram (TIC). Further, this function sets the number of cores
to be used for parallel processing. It first determines the number of cores 
within a user's computer and then sets it that number/2.
}
\author{
Jasmine Chong \email{jasmine.chong@mail.mcgill.ca},
Mai Yamamoto \email{yamamoto.mai@mail.mcgill.ca}, and Jeff Xia \email{jeff.xia@mcgill.ca}
McGill University, Canada
License: GNU GPL (>= 2)
}
