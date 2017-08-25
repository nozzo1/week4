#
# Developing Data Products
# Weeks 4 submission
# A look at some popular equations
# UI script
#

library(shiny)

# Define UI
shinyUI(fluidPage(theme = "bootstrap.css",
  
  # Application title
  titlePanel("Week 4 - Popular Equations with a reactive Shiny App"),
  
  # Sidebar
  sidebarLayout(
    sidebarPanel(
      strong(
        h4("By Chris Norris"),
        h4("25th August 2017")
      ),
      radioButtons("inFormula", "Formula Select", 
                   c("Area - Rectangle", "Area - Triangle", "Volume - Pyramid", "Volume - Cylinder", "Volume - Cone"), 
                   inline = FALSE),
      numericInput("inParam1", "First Parameter - Side length or radius", 10, min = 1),
      numericInput("inParam2", "Second Parameter - Side length or height", 10, min = 1)
    ),
    # Main Panel with output from server
    mainPanel(
      h4("Formula:"),
      verbatimTextOutput("oFormula"),
      h4("Side length or radius"),
      verbatimTextOutput("oParam1"),
      h4("Side length or height"),
      verbatimTextOutput("oParam2"),
      h4("The Answer is:"),
      verbatimTextOutput("oAnswer"),
      br(),
      h6("CSS style from bootswatch.com")
      ), fluid = FALSE
  )
))
