% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinfitr_2tcm.R
\name{twotcm_fitDelay_model}
\alias{twotcm_fitDelay_model}
\title{Model: Two Tissue Compartment Model with Delay}
\usage{
twotcm_fitDelay_model(t_tac, input, K1, k2, k3, k4, inpshift, vB)
}
\arguments{
\item{t_tac}{Numeric vector of times for each frame in minutes. We use the time halfway through the frame as well as a zero.}

\item{input}{Data frame containing the blood, plasma, and parent fraction concentrations over time.  This can be generated
using the \code{blood_interp} function.}

\item{K1}{Parameter value for K1}

\item{k2}{Parameter value for k2}

\item{k3}{Parameter value for k3}

\item{k4}{Parameter value for k4}

\item{inpshift}{Parameter value for inpshift, the delay.}

\item{vB}{Parameter value for vB}
}
\value{
A numeric vector of the predicted values of the TAC in the target region.
}
\description{
This is the Two Tissue Compartment Model model itself by which predicted values are generated, which includes fitting of the
delay, inpshift.
}
\examples{
twotcm_model(t_tac, input, K1=0.1, k2=0.08, k3=0.05, k4=0.02, vB=0.05)

}
\author{
Granville J Matheson, \email{mathesong@gmail.com}
}
