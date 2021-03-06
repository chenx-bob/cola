\name{test_to_known_factors-ConsensusPartitionList-method}
\alias{test_to_known_factors,ConsensusPartitionList-method}
\title{
Test correspondance between predicted classes and known factors
}
\description{
Test correspondance between predicted classes and known factors
}
\usage{
\S4method{test_to_known_factors}{ConsensusPartitionList}(object, k, known = get_anno(object),
    silhouette_cutoff = 0.5, verbose = FALSE)
}
\arguments{

  \item{object}{A \code{\link{ConsensusPartitionList-class}} object.}
  \item{k}{Number of subgroups. It uses all \code{k} if it is not set.}
  \item{known}{A vector or a data frame with known factors. By default it is the annotation table set in \code{\link{consensus_partition}} or \code{\link{run_all_consensus_partition_methods}}.}
  \item{silhouette_cutoff}{Cutoff for sihouette scores. Samples with value less than this are omit.}
  \item{verbose}{Whether to print messages.}

}
\details{
The function basically sends each \code{\link{ConsensusPartition-class}} object to
\code{\link{test_to_known_factors,ConsensusPartition-method}} and merges results afterwards.
}
\value{
A data frame with the following columns:

\itemize{
  \item number of samples used to test after filtered by \code{silhouette_cutoff},
  \item p-values from the tests,
  \item number of subgroups.
}
}
\seealso{
\code{\link{test_between_factors}}, \code{\link{test_to_known_factors,ConsensusPartition-method}}
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
data(cola_rl)
test_to_known_factors(cola_rl, known = 1:40)
}
