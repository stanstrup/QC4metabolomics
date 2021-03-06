% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/raw_to_tbl.R
\name{extract_polarity}
\alias{extract_polarity}
\title{Extract polarity from xcmsRaw object.}
\usage{
extract_polarity(xraw)
}
\arguments{
\item{xraw}{The xcmsRaw object to extract polarity from.}
}
\value{
A character string giving the polarity. Can be "positive", "negative", or "unknown".
}
\description{
Extracts polarity from an xcmsRaw object.
The polarity found in the majority of scans is returned.
}
