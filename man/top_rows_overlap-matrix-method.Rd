\name{top_rows_overlap-matrix-method}
\alias{top_rows_overlap,matrix-method}
\title{
Overlap of top rows from different top-value methods
}
\description{
Overlap of top rows from different top-value methods
}
\usage{
\S4method{top_rows_overlap}{matrix}(object, top_value_method = all_top_value_methods(),
    top_n = round(0.25*nrow(object)),
    method = c("euler", "venn", "correspondance"), ...)
}
\arguments{

  \item{object}{A numeric matrix.}
  \item{top_value_method}{Methods defined in \code{\link{all_top_value_methods}}.}
  \item{top_n}{Number of top rows.}
  \item{method}{\code{euler}: plot Euler diagram by \code{\link[eulerr]{euler}}; \code{venn}: plot Venn diagram by \code{\link[gplots]{venn}};  \code{correspondance}: use \code{\link{correspond_between_rankings}}.}
  \item{...}{Additional arguments passed to \code{\link[eulerr]{plot.euler}} or \code{\link{correspond_between_rankings}}.}

}
\details{
It first calculates scores for every top-value method and make plot by \code{\link{top_elements_overlap}}.
}
\value{
No value is returned.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\seealso{
\code{\link{top_elements_overlap}}
}
\examples{
set.seed(123)
mat = matrix(rnorm(1000), nrow = 100)
top_rows_overlap(mat, top_n = 25)
}
