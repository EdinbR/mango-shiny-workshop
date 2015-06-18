library(shiny)

shinyServer(function(input, output) {
    # single line of text printed
    output$printedText <- renderText(expr = {
        paste("You entered the text:", 
          input$userText)
      }
    )
  }
)

