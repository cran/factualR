\name{FactualSchemaResult-class}
\Rdversion{1.1}
\docType{class}
\alias{FactualSchemaResult-class}

\title{Class "FactualSchemaResult"}
\description{Encapsulates the result of the Factual.com "schema" API call, which describes a table's structure.}
\section{Objects from the Class}{
Objects of type \code{FactualSchemaResult} should not be created directly; instead,
please invoke \link{factualGetSchema}.
}
\section{Slots}{
  \describe{

    \item{\code{url}:}{URL used to call the Factual.com API.  Useful mainly for debugging.}
    \item{\code{tableID}:}{unique identifier for the Factual.com table you queried.}
    \item{\code{status}:}{request status as returned by Factual.com's API: one of "ok," "warn," or "error."}
    \item{\code{message}:}{blank if the Factual handled the request without a problem; otherwise, a description of the problem.}
    \item{\code{resultRows}:}{number of rows in this result.}
    \item{\code{tableRows}:}{number of total rows in the table.}
    \item{\code{results}:}{a data frame of the table returned by Factual.com.}
    \item{\code{name}:}{human-readable description of the table.}
    \item{\code{table.meta}:}{a \code{data.frame} of table metadata, such as the creator, total number of rows, and description.}
    \item{\code{fields}:}{a \code{data.frame} of the fields in this table.  Each row describes one field's name, data type, and so on.}
    \item{\code{processingTime}:}{time required on Factual's end to process the request; returned by Factual.com in verbose mode.}
    \item{\code{runTime}:}{time (ms) required for round-trip call to Factual.com.}
    \item{\code{fetchedAt}:}{date/time the data was requested from Factual.com.}
  }
}
\author{Ethan McCallum}

\keyword{classes}

\seealso{ \link{factualGetSchema} }
