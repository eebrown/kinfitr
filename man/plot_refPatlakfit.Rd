% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinfitr_refPatlak.R
\name{plot_refPatlakfit}
\alias{plot_refPatlakfit}
\title{Plot: Patlak Reference Tissue Model}
\usage{
plot_refPatlakfit(refpatlakout, roiname = NULL)
}
\arguments{
\item{refpatlakout}{The output object of the refPatlak fitting procedure.}

\item{roiname}{Optional. The name of the Target Region to see it on the plot.}
}
\value{
A ggplot2 object of the plot.
}
\description{
Function to visualise the fit of the refPatlak model to data.
}
\examples{
plot_refPatlakfit(refpatlakout)

}
\author{
Granville J Matheson, \email{mathesong@gmail.com}
}
