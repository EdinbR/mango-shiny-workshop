library(shiny)
shinyUI(fluidPage(
  # Define the header for the page
  titlePanel("Render Plot in a Shiny App"),
  # Set up the page to have a sidebar
  sidebarLayout(
    # Define the contents of the sidebar
    sidebarPanel(
      helpText("Choose a variable;
      that data will be displayed
      as a histogram"),
      selectInput(inputId = "variable", 
        label = "Select column:", 
        choices = colnames(mtcars))
    ),
    # Define the contents of the main panel
    mainPanel(
      plotOutput("histogram")
    )
  )
  
))
