% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icmeters.R
\name{ic_measurements}
\alias{ic_measurements}
\title{Convert raw data into a tibble of xcmsRaw objects.}
\usage{
ic_measurements(token, boxQR, fromDate, toDate)
}
\arguments{
\item{token}{A character vector containing the ICMeter token}

\item{boxQR}{A character vector containing QR code for the box you want to query}

\item{fromDate}{The starting date to draw data from}

\item{toDate}{The ending date to draw data to. A maximum of one month can be draw at a time.}
}
\value{
data.frame holding all the data drawn
}
\description{
Convert raw data into a tibble of xcmsRaw objects.
}
