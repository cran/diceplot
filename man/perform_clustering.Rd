% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{perform_clustering}
\alias{perform_clustering}
\title{Perform Hierarchical Clustering on Category A}
\usage{
perform_clustering(data, cat_a, cat_b, cat_c)
}
\arguments{
\item{data}{A data frame containing the variables.}

\item{cat_a}{The name of the column representing category A.}

\item{cat_b}{The name of the column representing category B.}

\item{cat_c}{The name of the column representing category C.}
}
\value{
A vector of category A labels ordered according to the hierarchical clustering.
}
\description{
Performs hierarchical clustering on category A based on the binary presence of combinations of categories B and C.
}
\examples{
library(dplyr)
library(tidyr)
library(tibble)
data <- data.frame(
  cat_a = rep(letters[1:5], each = 4),
  cat_b = rep(LETTERS[1:2], times = 10),
  cat_c = sample(c("Var1", "Var2", "Var3"), 20, replace = TRUE)
)
perform_clustering(data, "cat_a", "cat_b", "cat_c")
}
