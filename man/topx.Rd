% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topX.R
\name{topx}
\alias{topx}
\title{A function to selectec top X on the basis of gene/transcript expression}
\usage{
topx(data.folder, file.name, threshold, logged = FALSE)
}
\arguments{
\item{data.folder, }{a character string indicating the folder where input data are located and where output will be written}

\item{file.name, }{counts table name, tab delimited. Matrix data file must be in data.folder.}

\item{threshold, }{integer used for filtering indicate the number of top expressed genes to be selected}

\item{logged, }{boolean TRUE or FALSE, if FALSE gene expression data are expressed in the plot as log10.}
}
\value{
a filtered tab delimited file and a histogram of the gene by gene total expression
}
\description{
This function select the X top genes give a user defined threshold
}
\examples{
\dontrun{

 topx(data.folder=getwd(),file.name="singlecells_counts.txt",threshold=10000, logged=FALSE)
}

}
\author{
Raffaele Calogero, raffaele.calogero [at] unito [dot] it, UNITO
}
