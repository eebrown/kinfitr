% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinfitr_bloodfuncs.R
\name{shift_timings}
\alias{shift_timings}
\title{Shift timings of TAC and Input}
\usage{
shift_timings(t_tac, tac, input, inpshift, shifttac = T)
}
\arguments{
\item{t_tac}{Numeric vector of times for each frame in minutes. We use the time halfway through the frame as well as a
zero. If a time zero frame is not included, it will be added.}

\item{tac}{Numeric vector of radioactivity concentrations in the target tissue for each frame. We include zero at time
zero: if not included, it is added.}

\item{input}{Data frame containing the blood, plasma, and parent fraction concentrations over time.  This can be generated
using the \code{blood_interp} function.}

\item{inpshift}{The number of minutes by which the times of the input data frame should be adjusted.}

\item{shifttac}{Optional. Can the TAC be shifted. If the input is shifted negatively, it will then
contain negative time values. If \code{shifttac=TRUE}, the TAC will be made later, but if \code{shifttac=FALSE},
the blood, plasma and parent fraction with negative values will be removed. Default is TRUE.}
}
\value{
A list containing the following after time shifting: the times of the TAC \code{out$t_tac},
the TAC \code{out$tac}, the input dataframe \code{out$input}, the interpolated time \code{out$interptime}
(which is the same as the time in the input dataframe), and the interpolated TAC \code{out$i_tac}.
}
\description{
This function sorts out all the time shifting of the input and TAC so that they are in the
same time. This function makes several 'editorial decisions'. i) If the TAC is shifted positively, all frames
will be shifted positively, but the time=0 frame will remain at time=0, i.e. there are no extra frames added.
Shifting of the TAC only occurs if the input is shifted negatively (and can be turned off using \code{shifttac=F}).
ii) If the input is shifted, and is subsequently shorter than the TAC, an extra measurement will be
added at \code{max(t_tac)} with the same value as the last measurement. iii) If the input is shifted positively,
all interpolated times will be shifted by the specified amount, but an extra measurement is added at time=0 of
0,0,1 for blood, plasma and parent fraction respectively (followed by interpolation into 6000 equally spaced time
intervals in the new time window) i.e. not the same process as for the TACs: I figure that since the blood changes
so quickly, this is likely more close to the true kinetics. Get in touch if you have suggestions for this.
}
\details{
Function to shift backwards and forwards the timings of the TAC vector and input data frame
to make them consistent.
}
\examples{
inpshift = 0.25   # 15 seconds
newValues <- shift_timings(t_tac, tac, input, inpshift)
t_tac <- newValues$t_tac
tac <- newValues$tac
input <- newValues$input

}
\author{
Granville J Matheson, \email{mathesong@gmail.com}
}
