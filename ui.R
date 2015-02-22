library(shiny)

data(mtcars)

shinyUI(pageWithSidebar(
  headerPanel('Motor Trend Correlation Matrix'),
  sidebarPanel(
    p("Motor Trend Car Road Tests (mtcars) dataset includes 11 variables.
      From previous work on data exploration and linear regression, we know many of these variables to be correlated. 
      This application allows further exploration of correlated variables, by viewing value of the correlation, 
      the result of cor.test, and a bivariate scatterplot."),
    p("Choose variables to explore correlation:"),
    selectInput('var1', 'Variable', names(mtcars)),
    selectInput('var2', 'Variable', names(mtcars))
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
