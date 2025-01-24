#' Helps with cheating by producing helpful information
#'
#' @param help_with
#'
#' @return a string containing helpful information
#' @export
#'
#' @examples
cheatcode <- function(help_with = c("ggplot", "rnorm", "apply")){
  switch(help_with,
         ggplot = "First argument has to be a dataframe. Make sure you specify aes() correctly. If you want a bar plot with x and y, you have to do geom_hist(stat = identity) for some reason",
         rnorm = "The first argument is how many values you want, then the mean value your distribution should have, and then its standard deviation.",
         apply = "apply() can be used for vectors, matrices and arrays, The first argument specifies the object, the second the dimension (1 = row, 2 = column, 3 = slice")
}
