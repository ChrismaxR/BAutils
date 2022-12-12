# theme picked up from this source: https://www.cararthompson.com/talks/nhsr2022-ggplot-themes/
# This theme helps in adding a Text hierarchy, so helping readers orient to the
# most important parts of the graph, let the graph breath more than the standard
# ggplot plots

#'@param base_size A number which controls the font size, 12 is default
#'@param legend_position A string ("top", "bottom", "left", "right") to control the position of the legend
#'
#'@return A ggplot object
#'
#'@export
#'
#'@examples
#' ggplot(mtcars, aes(mpg, cyl)) +
#' geom_point() +
#' labs(title = "Yikes", subtitle = "That's ugly") +
#' gg_theme_ba1(base_size = 12, legend_position = "right")

gg_theme_ba1 <- function(base_size = 12, legend_position = "right") {

  dark_text = "#1A242F"
  mid_text <-  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[2]
  light_text <-  monochromeR::generate_palette(dark_text, "go_lighter", n_colours = 5)[3]

  theme_minimal(base_size = base_size) +
    theme(
      text = element_text(
        colour = mid_text,
        family = "Brandon Text Regular",
        lineheight = 1.1
      ),
      plot.title = element_text(
        colour = dark_text, family = "Enriqueta",
        size = rel(1.6), margin = margin(12, 0, 8, 0)
      ),
      plot.subtitle = element_text(size = rel(1.1), margin = margin(4, 0, 0, 0)),
      axis.text.y = element_text(colour = mid_text),
      axis.title.y = element_text(size = 12, margin = margin(0, 4, 0, 0)),
      axis.text.x = element_text(colour = mid_text, size = 12),
      axis.title.x = element_text(size = 12, margin = margin(0, 4, 0, 0)),
      legend.position = legend_position,
      legend.justification = 1,
      panel.grid = element_line(colour = "#F3F4F5"),
      plot.caption = element_text(size = rel(0.8), margin = margin(8, 0, 0, 0)),
      plot.margin = margin(0.25, 0.25, 0.25, 0.25,"cm")
    )
}
