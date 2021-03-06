\name{get_membership-ConsensusPartitionList-method}
\alias{get_membership,ConsensusPartitionList-method}
\title{
Get membership matrix
}
\description{
Get membership matrix
}
\usage{
\S4method{get_membership}{ConsensusPartitionList}(object, k)
}
\arguments{

  \item{object}{A \code{\link{ConsensusPartitionList-class}} object.}
  \item{k}{Number of subgroups.}

}
\details{
The membership matrix (the probability of each sample to be in one subgroup, if assuming columns represent samples) is inferred
from the consensus partition of every combination of methods, weighted by the mean silhouette score of the partition
for each method. So methods which give unstable partitions have lower weights 
when summarizing membership matrix from all methods.
}
\value{
A membership matrix where rows correspond to the columns in the original matrix.
}
\seealso{
\code{\link{get_membership,ConsensusPartition-method}} returns membership matrix for a single top-value method and partitioning method.
}
\author{
Zuguang Gu <z.gu@dkfz.de>
}
\examples{
data(cola_rl)
get_membership(cola_rl, k = 2)
}
