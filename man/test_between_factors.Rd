\name{test_between_factors}
\alias{test_between_factors}
\title{
Test whether a list of factors are correlated
}
\description{
Test whether a list of factors are correlated
}
\usage{
test_between_factors(x, y = NULL, all_factors = FALSE, verbose = FALSE)
}
\arguments{

  \item{x}{A data frame or a vector which contains discrete or continuous variables. if \code{y} is omit, pairwise testing for all columns in \code{x} is performed.}
  \item{y}{A data frame or a vector which contains discrete or continuous variables.}
  \item{all_factors}{Are all columns in \code{x} and \code{y} enforced to be factors?}
  \item{verbose}{Whether to print messages.}

}
\details{
Pairwise test is applied to every two columns in the data frames. Methods are:

\itemize{
  \item two numeric variables: correlation test by \code{\link[stats]{cor.test}} is applied;
  \item two character or factor variables: \code{\link[stats]{chisq.test}} is applied;
  \item one numeric variable and one character/factor variable: oneway ANOVA test by \code{\link[stats]{oneway.test}} is applied.
}

This function can be used to test the correlation between the predicted classes and other known factors.
}
\value{
A matrix of p-values. If there are NA values, basically it means there are no efficient data points to perform the test.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
df = data.frame(
    v1 = rnorm(100), 
    v2 = sample(letters[1:3], 100, replace = TRUE), 
    v3 = sample(LETTERS[5:6], 100, replace = TRUE)
)
test_between_factors(df)
x = runif(100)
test_between_factors(x, df)
}
