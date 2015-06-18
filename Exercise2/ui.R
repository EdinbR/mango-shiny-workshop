library(shiny)
shinyUI(fluidPage(
    # Define the header for the page
    titlePanel("Render Plot in a Shiny App"),
    # Set up the page to have a sidebar
    sidebarLayout(
      # Define the contents of the sidebar
      sidebarPanel(
        sliderInput(inputId = "numberInput", 
          label = "Select size of data:", 
          min = 20, max = 400, value = 100, step = 20),
        selectInput(inputId = "colInput", 
          label = "Select a colour", 
          choices = c("red", "yellow", "blue", "green"))
      ),
      # Define the contents of the main panel
      mainPanel(
        plotOutput("histogram")
      )
    )
  )
)
