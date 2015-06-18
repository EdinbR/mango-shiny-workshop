library(shiny)

shinyUI(fluidPage(  
    # Define the header for the page
    titlePanel("An Exciting Shiny App to Print Dates!"),
    # Set up the page to have a sidebar
    sidebarLayout(
      # Define the contents of the sidebar
      sidebarPanel(
        dateInput(inputId = "dateInput", 
          label = "Enter Date to print:")
      ),
      
      # Define the contents of the main panel
      mainPanel(
        textOutput(outputId = "dateOutput"), 
        textOutput(outputId = "yearOutput"))
    )
  ) 
)
