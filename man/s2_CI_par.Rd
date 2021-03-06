% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s2_CI_par.R
\name{s2_CI_par}
\alias{s2_CI_par}
\title{Confidence Intervals and Estimates of Sigma-Squared - Parallelized}
\usage{
s2_CI_par(lrbs, alpha = 0.05)
}
\arguments{
\item{lrbs}{A linear_reg_bs or linear_reg_bs_par object containing BLB sigma-squared
estimates.}

\item{alpha}{The significance level. Default value is 0.05.}
}
\value{
The overall confidence interval for sigma-squared, along with its overall
estimate.
}
\description{
This function takes in a list of linear regression error variance (sigma-squared)
estimates generated by a Bag of Little Bootstraps procedure. Then, empirical
confidence intervals and point estimates of sigma-squared are determined for each
subsample. Afterwards, the endpoints of all confidence intervals are averaged to
form an overall confidence interval, and point estimates are averaged to form an
overall estimate. The difference between this function and s2_CI is that this
function uses parallel processing through furrr's future_map function.
}
