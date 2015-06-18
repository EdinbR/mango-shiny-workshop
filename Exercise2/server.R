library(shiny)
shinyServer(function(input, output) {
    output$histogram <- renderPlot(expr = {
        vals <- rnorm(input$numberInput)
        hist(x = vals, 
          col = input$colInput)
      }
    )
  }
)
