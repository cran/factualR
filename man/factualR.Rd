\name{factualR}
\alias{factualR}
\alias{createFactualConnection}
\alias{factualGetSchema}
\alias{factualRead}

\title{common functions in the factualR package}
\description{
This document describes the end-user functions for the factualR package.

Please note: as this package is a thin wrapper around the Factual.com API, you will need a Factual API Key.  You can sign up for one at \code{http://www.factual.com/}.

For now, this package supports read-only requests ("read" and "schema"); a future revision may support modification of Factual.com data ("input" API calls).
}
\usage{
createFactualConnection( apiKey = NULL , apiVersion = NULL , baseURL = NULL )

factualGetSchema( connection , tableID , verbose = FALSE )

factualRead(connection , tableID , sort = NULL , limit = NULL , offset = NULL , filters = NULL , subject_key = NULL , reformatNames , verbose = FALSE )
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{apiKey}{your "Factual API key" as acquired from \code{http://www.factual.com/}.}
  \item{apiVersion}{the version of the Factual.com API.  Unless you are a developer on factualR, you needn't specify this parameter.}
  \item{baseURL}{the base URL for calls to Factual.com.  Unless you are a developer on factualR, you needn't specify this parameter.}
  \item{connection}{a connection as returned from \code{createFactualConnection()}.}
  \item{tableID}{the table's unique identifier, sometimes called "table reference," from Factual.com.}
  \item{sort}{sort field(s), using JSON syntax.  factualR will URL-encode this string for you.}
  \item{limit}{maximum number of records (rows) to pull from this table.}
  \item{offset}{start pulling records (rows) from this numeric offset.}
  \item{filters}{limit records (rows) based on these criteria, in JSON format.  factualR will URL-encode this string for you.}
  \item{subject_key}{unique identifier for a row.  (If you're exporting several rows, e.g. for an analysis, you probably won't use this.)}
  \item{reformatNames}{whether to reformat column names to be more R-friendly (e.g., remove all but alphanumeric characters).}
  \item{verbose}{should we show debugging information, such as the URL, during processing?  (Useful for debugging.)}
}
\details{
For a description of the \code{filters} and \code{sort} filters, please refer to the Factual.com developer documentation at: \code{http://wiki.developer.factual.com/w/page/29670788/Server-API}.

Note that factualR will URL-encode all parameters for you; please don't URL-encode any of the values passed to \code{factualGetSchema} or \code{factualRead}.

Under some circumstances, a call to \code{factualRead()} or \code{factualGetSchema()} will fail in a way that does not return an object.  When that happens, please rerun the call using \code{verbose=TRUE} to print the target URL.  If you paste that into a browser or a commandline tool such as \code{curl}, you can determine whether there is a connectivity problem to Factual.com.
}
\references{
The main \code{http://www.factual.com/} website explains Factual's mission.

\code{http://www.factual.com/devtools/serverAPI} explains the REST API used by factualR, including the (optional) \code{filters} and \code{sort} parameters used by \code{factualRead}.

Finally, \code{http://wiki.developer.factual.com/w/page/12298839/Basics} explains more about the elements common to all responses from the API, such as \code{status} and \code{message}.
}
\author{Ethan McCallum}

\examples{
\dontrun{
## make sure you have signed up for a developer API key at http://www.factual.com/

myAPIKey <- " ... YOUR Factual.com API KEY"

factual <- createFactualConnection( myAPIKey )

## Skim http://www.factual.com/topics for an interesting table.  Click the table's
## link and then click the "develop" tab.  Note the "table reference."
tableID <- "... table reference from the table's 'Develop' tab ..."

## now, let's get an idea of the table's schema and metadata:
table.meta <- factualGetSchema( factual , tableID )

str(table.meta)

## with that in mind, get the table's data
table.data <- factualRead( factual , tableID )

## get an idea of the result object
str(table.data)

## that's great, but we really want to play with the table data
## (it's a data frame)
table.data@results


## hm, let's get 60 rows so we can explore
table.data.small <- factualRead( factual , tableID , limit=60 )

str(table.data.small@results)


## let's use some filters to limit the data we pull.
## pretend the table of interest has colums named "state"
## and "city"
filters <- '{"city":"New York","state":"NY"}'

table.data.filtered <- factualRead( factual , tableID , filters = filters )
str(table.data.small@filtered)
}
}
