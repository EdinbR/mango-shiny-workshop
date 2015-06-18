library(shiny)
shinyServer(function(input, output) {
    output$histogram <- renderPlot(expr = {
        hist(x = mtcars[, input$variable], 
          main = paste("Histogram of", input$variable),
          xlab = input$variable)
      }
    )
  }
)
