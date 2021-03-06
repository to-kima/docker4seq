% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/salmonCounts.R
\name{salmonCounts}
\alias{salmonCounts}
\title{A function to handle a salmon docker container}
\usage{
salmonCounts(group = c("sudo", "docker"), scratch.folder, fastq.folder,
  index.folder, threads = 8, seq.type = c("se", "pe"),
  strandness = c("none", "forward", "reverse"))
}
\arguments{
\item{group, }{a character string. Two options: sudo or docker, depending to which group the user belongs}

\item{scratch.folder, }{a character string indicating the path of the scratch folder}

\item{fastq.folder, }{a character string indicating the folder where input data are located and where output will be written}

\item{index.folder, }{a character string indicating the folder where transcriptome index was created with salmonIndex.}

\item{threads, }{a number indicating the number of cores to be used from the application}

\item{seq.type, }{a character string indicating the type of reads to be generated by the sequencer. Two options: \code{"se"} or \code{"pe"} respectively for single end and pair end sequencing. Strandness is inferred by salmon.}

\item{strandness, }{a character string indicating the type ofsequencing protocol used for the analysis. Three options: \code{"none"}, \code{"forward"}, \code{"reverse"} respectively for non strand selection, reverse for Illumina strandness protocols, reverse for ACCESS Illumina protocol}
}
\description{
This function executes a docker that produces as output the transcripts count file generated by Salmon quasi-alignment
}
\examples{
\dontrun{
system("wget http://130.192.119.59/public/test_R1.fastq.gz")
system("wget http://130.192.119.59/public/test_R2.fastq.gz")
library(docker4seq)
wrapperSalmon(group="docker", scratch.folder="/data/scratch/",
              fastq.folder=getwd(), index.folder="/data/genomes/hg38salmon",
              threads=24, seq.type="pe", adapter5="AGATCGGAAGAGCACACGTCTGAACTCCAGTCA",
              adapter3="AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT", min.length=40, strandness="none")
}

}
\author{
Raffaele Calogero, raffaele.calogero [at] unito [dot] it, Bioinformatics and Genomics unit, University of Torino Italy
}
