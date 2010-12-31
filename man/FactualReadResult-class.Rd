\name{FactualReadResult-class}
\Rdversion{1.1}
\docType{class}
\alias{FactualReadResult-class}

\title{Class "FactualReadResult"}
\description{Encapsulates the result of the Factual.com "read" API call, which reads data from a table.}
\section{Objects from the Class}{
Objects of type \code{FactualReadResult} should not be created directly; instead,
please invoke \link{factualRead}.
}
\section{Slots}{
  \describe{
    \item{\code{url}:}{URL used to call the Factual.com API.  Useful mainly for debugging.}
    \item{\code{tableID}:}{unique identifier for the Factual.com table you queried.}
    \item{\code{status}:}{request status as returned by Factual.com's API: one of "ok," "warn," or "error."}
    \item{\code{message}:}{blank if the Factual handled the request without a problem; otherwise, a description of the problem.}
    \item{\code{resultRows}:}{number of rows in this result.}
    \item{\code{tableRows}:}{number of total rows in the table.}
    \item{\code{results}:}{a \code{data.frame} of the table returned by Factual.com.}
    \item{\code{processingTime}:}{time required on Factual's end to process the request; returned by Factual.com in verbose mode.}
    \item{\code{runTime}:}{time (ms) required for round-trip call to Factual.com.}
    \item{\code{fetchedAt}:}{date/time the data was requested from Factual.com.}
  }
}
\author{Ethan McCallum}

\keyword{classes}

\seealso{ \link{factualRead} }
