% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gene_extract.r
\name{clinvar_gene}
\alias{clinvar_gene}
\title{Extracting genes from clinvar database NCBI.}
\usage{
clinvar_gene(terms, clinvar, downloadClinvar, omimID = NULL)
}
\arguments{
\item{terms}{Single or Multiple Terms.}

\item{clinvar}{character clinvar database location.}

\item{downloadClinvar}{boolean If TRUE, download the gtr database.
Default FALSE.}

\item{omimID}{numeric Omim Id for disease.}
}
\value{
Dataframe returned containing gene lists in entrezid and Gene 
Symbols, and terms associated with it
}
\description{
Extracting genes from clinvar database NCBI.
}
\examples{
terms="Liver cirrhosis"
clinvar = system.file("extdata", "localPDB/", package="nanotatoR")
downloadClinvar = FALSE
ge <- clinvar_gene(terms = terms, clinvar = clinvar, 
downloadClinvar = downloadClinvar, 
omimID = "OMIM:118980")
}
