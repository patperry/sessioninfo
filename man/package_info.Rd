% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package-info.R
\name{package_info}
\alias{package_info}
\title{Information about the currently loaded packages, or about a chosen set}
\usage{
package_info(pkgs = NULL, include_base = FALSE)
}
\arguments{
\item{pkgs}{Either a vector of package names or NULL. If \code{NULL},
displays all loaded packages. If a character vector, also, includes
all dependencies of the package.}

\item{include_base}{Include base packages in summary? By default this is
false since base packages should always match the R version.}
}
\value{
A data frame with columns:
\itemize{
\item \code{package}: package name.
\item \code{loadedversion}: package version. This is the version of the loaded
namespace if \code{pkgs} is \code{NULL}, and it is the version of the package
on disk otherwise. The two of them are almost always the same,
though.
\item \code{ondiskversion}: package version (on the disk, which is sometimes
not the same as the loaded version).
\item \code{path}: path to the package on disk.
\item \code{attached}: logical, whether the package is attached to the search
path.
\item \code{is_base}: logical, whether the package is a base package.
\item \code{date}: the date the package was installed or built.
\item \code{source}: where the package was installed from. E.g.
\code{CRAN}, \code{GitHub}, \code{local} (from the local machine), etc.
}

See \code{\link[=session_info]{session_info()}} for the description of the \emph{printed} columns
by \code{package_info} (as opposed to the \emph{returned} columns).
}
\description{
Information about the currently loaded packages, or about a chosen set
}
\examples{
package_info()
package_info("sessioninfo")
}
