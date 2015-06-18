#library(shiny)

shinyUI(fluidPage(
  
    # Define the header for the page
    titlePanel("An Exciting Shiny App to Print Text!"),
    
    # Set up the page to have a sidebar
    sidebarLayout(
      # Define the contents of the sidebar
      sidebarPanel(
        textInput(inputId = "userText", 
          label = "Enter text here:")
      ),
      
      # Define the contents of the main panel
      mainPanel(textOutput(outputId = "printedText"))
    )
  ) 
)
