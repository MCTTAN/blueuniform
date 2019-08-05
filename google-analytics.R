
require(googleAnalyticsR)
require(googleVis)
require(gapminder)

head(gapminder)
?gapminder

animated_plot <- gvisMotionChart(gapminder, xvar = "pop", yvar = "lifeExp", timevar = "year", idvar = "country")

plot(animated_plot)