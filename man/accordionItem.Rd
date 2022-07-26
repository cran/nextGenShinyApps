% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accordions.R
\name{accordionItem}
\alias{accordionItem}
\title{Generate an accordion item}
\usage{
accordionItem(
  ...,
  title = "A title",
  status = c("default", "primary", "secondary", "info", "success", "danger", "warning"),
  icon = NULL
)
}
\arguments{
\item{...}{The elements to include within the body of the particular accordion}

\item{title}{The title of the accordion item}

\item{status}{Set the header background using either of "default", "primary", "secondary", "info", "success", "danger", "warning"}

\item{icon}{Include an icon to the left of the title for the accordion item}
}
\value{
A list of properties for an accordion item
}
\description{
Embed an accordion item within an accordion
}
\examples{
if (interactive()) {
accordionItem(
  title = "Accordion 2",
  icon = shiny::icon("cog"),
  "Auctor neque etiam non."
)
}

}
