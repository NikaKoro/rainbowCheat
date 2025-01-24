#' Create a rainbow coloured line graph
#'
#' @param dataframe a dataframe containing your data, passed to \code{\link{ggplot}}
#' @param x one variable of interest
#' @param y another variable of interest
#' @param title title that should be given to the graph
#'
#' @return a rainbow line graph
#' @export
#'
#'@importFrom ggplot2 ggplot
#' @examples
rainbowGraph <- function(dataframe, x, y, title = "My Beautiful Plot"){
  ggplot(dataframe, mapping = aes(x = x, y = y)) +
    geom_line(size = 1.5, aes(color = x)) +
    labs(title = title) +
    scale_color_gradientn(colors = rainbow(7)) +
    theme_minimal()
}
