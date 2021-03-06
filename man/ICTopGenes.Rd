% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dimensional_reduction_utilities.R
\name{ICTopGenes}
\alias{ICTopGenes}
\title{Find genes with highest ICA scores}
\usage{
ICTopGenes(object, ic.use = 1, num.genes = 30, use.full = FALSE,
  do.balanced = FALSE)
}
\arguments{
\item{object}{Seurat object}

\item{ic.use}{Independent components to use}

\item{num.genes}{Number of genes to return}

\item{use.full}{Use the full ICA (projected ICA), default is FALSE}

\item{do.balanced}{Return an equal number of genes with both + and - IC scores.}
}
\value{
Returns a vector of genes
}
\description{
Return a list of genes with the strongest contribution to a set of
indepdendent components
}
\examples{
pbmc_small
pbmc_small <- RunICA(object = pbmc_small, ics.compute = 10, ics.print = 0)
pbmc_small <- ProjectDim(object = pbmc_small, reduction.type = "ica", do.print = FALSE)
ICTopGenes(object = pbmc_small, ic.use = 1)
# After projection:
ICTopGenes(object = pbmc_small, ic.use = 1, use.full = TRUE)

}
