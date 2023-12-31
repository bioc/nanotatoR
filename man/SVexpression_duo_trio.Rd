% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RNASEQ_Analysis_Duo_Trio_SVMerge_SE.r
\name{SVexpression_duo_trio}
\alias{SVexpression_duo_trio}
\title{Extract Read counts for genes that are near
or overalapping SVs.}
\usage{
SVexpression_duo_trio(
  input_fmt_SV = c("Text", "dataFrame"),
  smapdata,
  smappath,
  input_fmt_RNASeq = c("Text", "dataFrame"),
  RNASeqData,
  RNASeqPATH,
  outputfmt = c("Text", "datFrame"),
  pattern_Proband = NA,
  pattern_Mother = NA,
  pattern_Father = NA,
  EnzymeType = c("SVMerge", "SE")
)
}
\arguments{
\item{input_fmt_SV}{character. genes that are upstream
and/or downstream of SV. input_fmt_RNASeq}

\item{smapdata}{dataframe. smap data in dataframe format.}

\item{smappath}{character. smap path.}

\item{input_fmt_RNASeq}{character. input format of RNASEQ data.
Text or dataframe.}

\item{RNASeqData}{character. Expression of the genes.}

\item{RNASeqPATH}{character. RNASEQ path.}

\item{outputfmt}{character. Output format choice dataframe or text.}

\item{pattern_Proband}{character. Pattern to identify the proband reads.}

\item{pattern_Mother}{character. Pattern to identify the mother reads.}

\item{pattern_Father}{character. Pattern to identify the father reads.}

\item{EnzymeType}{character. Enzyme used. option "Dual" or "DLE".}
}
\value{
Text or Dataframe containing TPM read counts of genes in the family.
}
\description{
Extract Read counts for genes that are near
or overalapping SVs.
}
\examples{
\dontrun{
RNASeqDir = system.file("extdata", package="nanotatoR")
returnMethod="dataFrame"
datRNASeq <- RNAseqcombine(RNASeqDir = RNASeqDir,
returnMethod = returnMethod)
smapName="NA12878_DLE1_VAP_solo5.smap"
smap = system.file("extdata", smapName, package="nanotatoR")
datcomp<-overlapnearestgeneSearch(smap = smap,
   bed=bedFile, inputfmtBed = "BED", outpath,
   n = 3, returnMethod_bedcomp = c("dataFrame"),
   input_fmt_SV = "Text",
   EnzymeType = "SVMerge",
   bperrorindel = 3000,
   bperrorinvtrans = 50000)
datRNASeq1 <- SVexpression(
    input_fmt_SV=c("dataFrame"),
    input_fmt_RNASeq=c("dataFrame"),
    RNASeqData = datRNASeq,
    outputfmt=c("datFrame"),
    pattern_Proband = "*_P_*", EnzymeType = c("SVMerge"))
}
}
