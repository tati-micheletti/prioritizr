#' @include internal.R
NULL

#' Simulated conservation planning scenario
#' 
#' This scenario involves making a prioritsation to adequately conserve
#' as many simulated species as possible within a budget. To acheive this
#' goal, the scenario involves using the following data:
#' 
#' \describe{
#'   \item{\code{sim_pu_polygons}}{Planning units represented as polygon data.
#'     The 'cost' field in the attribute table contains the cost of each 
#'     planning unit.}
#'   \item{\code{sim_pu_points}}{Planning units represented as point data.
#'     The 'cost' field in the attribute table contains the cost of each 
#'     planning unit.}
#'   \item{\code{sim_pu_lines}}{Planning units represented as line data.
#'     The 'cost' field in the attribute table contains the cost of each 
#'     planning unit.}
#'   \item{\code{sim_pu_raster}}{Planning units represented as raster data. Pixel values indicate cost.}
#'   \item{\code{sim_features}}{The simulated distribution of ten species.
#'     Pixel values indicate habitat suitability.}
#'   \item{\code{sim_phylogeny}}{The phylogenetic tree for the ten species.}
#' }
#'
#' @docType data
#'
#' @aliases sim_pu_polygons sim_pu_points sim_pu_lines sim_pu_raster sim_phylogeny sim_features sim_phylogeny
#'
#' @usage data(sim_features)
#'
#' @usage data(sim_pu_polygons)
#'
#' @usage data(sim_pu_points)
#
#' @usage data(sim_pu_lines)
#'
#' @usage data(sim_pu_raster)
#'
#' @usage data(sim_phylogeny)
#'
#' @format \describe{
#'   \item{sim_features}{\code{\link[raster]{RasterStack-class}} object.}
#'   \item{sim_pu_polygons}{\code{\link[sp]{SpatialPolygonsDataFrame-class}} object.}
#'   \item{sim_pu_lines}{\code{\link[sp]{SpatialLinesDataFrame-class}} object.}
#'   \item{sim_pu_points}{\code{\link[sp]{SpatialPointsDataFrame-class}} object.}
#'   \item{sim_pu_raster}{\code{\link[raster]{RasterLayer-class}} object.}
#'   \item{sim_phylogeny}{\code{\link[ape]{phylo}} object.}
#' }
#'
#' @keywords datasets
#'
#' @examples
#' # load data
#' data(sim_pu_polygons, sim_pu_lines, sim_pu_points, sim_pu_raster, sim_phylogeny,
#'      sim_features)
#'
#' # plot data
#' par(mfrow=c(3,3))
#' plot(sim_pu_polygons)
#' plot(sim_pu_lines)
#' plot(sim_pu_points)
#' plot(sim_pu_raster)
#' plot(sim_phylogeny)
#' plot(sim_features)
#' 
#' # make problems using example data
#' p1 <- problem(sim_pu_polygons, sim_features) +
#'      maximum_coverage_objective(budget=20) +
#'      relative_target(0.2)
#'
#' p2 <- problem(sim_pu_lines, sim_features) +
#'      maximum_coverage_objective(budget=20) +
#'      relative_target(0.2)

#' p3 <- problem(sim_pu_points, sim_features) +
#'      maximum_coverage_objective(budget=20) +
#'      relative_target(0.2)
#'
#' p4 <- problem(sim_pu_raster, sim_features) +
#'      maximum_coverage_objective(budget=20) +
#'      relative_target(0.2)
#'
#' p5 <- problem(sim_pu_raster, sim_features) +
#'      phylogenetic_coverage_objective(budget=20, tree=sim_phylogeny) +
#'      relative_target(0.2) +
#'      rsymphony_solver()
#' 
#' # make solutions
#  s1 <- solve(p1)
#' s2 <- solve(p2)
#' s3 <- solve(p3)
#' s4 <- solve(p4)
#' s5 <- solve(p5)
#
#' # plot solutions
#  plot(stack(s1, s2, s3, s4, s5))
#'
#' @name sim_data
NULL

#' @rdname sim_data
"sim_features"

#' @rdname sim_data
"sim_pu_polygons"

#' @rdname sim_data
"sim_pu_lines"

#' @rdname sim_data
"sim_pu_points"

#' @rdname sim_data
"sim_pu_raster"

#' @rdname sim_data
"sim_phylogeny"