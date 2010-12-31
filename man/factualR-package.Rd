\name{factualR-package}
\alias{factualR-package}
\docType{package}
\title{thin wrapper for the Factual.com server API}
\description{
Per the Factual.com website, "Factual is a platform where anyone can share and mash open, living data on any subject."  The data is in the form of tables and is accessible via REST API.  The factualR package is a thin wrapper around the Factual.com API, to make it even easier for people working with R to explore Factual.com data sets.

For now, this package supports read-only requests ("read" and "schema"); a future revision may support modification of Factual.com data ("input" API calls).
}
\details{
\tabular{ll}{
Package: \tab factualR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-12-26\cr
License: \tab Apache 2.0\cr
LazyLoad: \tab yes\cr
Depends: \tab methods RJSONIO RCurl\cr
}
To use this package, please refer to the functions \code{createFactualConnection}, \code{factualGetSchema}, and \code{factualRead}.  That documentation includes examples.

Also, please refer to the developer documentation for the "Server API" at \code{http://wiki.developer.factual.com/}
}
\author{
Ethan McCallum

Maintainer: Ethan McCallum <factualr-package@exmachinatech.net>
}
\references{
http://wiki.developer.factual.com/
}
\keyword{ package }
\seealso{
\code{\link{createFactualConnection}}
\code{\link{factualGetSchema}}
\code{\link{factualRead}}
}
