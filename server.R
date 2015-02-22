
library(shiny)
library(PerformanceAnalytics)

data(mtcars)

shinyServer(function(input, output, session) {
    
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    mtcars[, c(input$var1, input$var2)]
  })
     
  output$plot1 <- renderPlot({
    chart.Correlation(selectedData())  
  })
})

