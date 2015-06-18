library(shiny)
shinyServer(function(input, output) {
    output$dateOutput <- renderText(expr = {
        format(x = input$dateInput, 
          format = "A %A in %B.")
        }
      )
    
    output$yearOutput <- renderText(expr = {
        format(x = input$dateInput, 
          format = "The year is %Y.")
      }
    )
  }
)

