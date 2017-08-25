#
# Developing Data Products
# Weeks 4 submission
# A look at some popular equations
# Server side script
# There are many improvements that could be made but for the purposes
# of the exercise rubric I thought this enough.
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$oAnswer    <- reactive({
    output$oFormula   <- renderPrint({input$inFormula})
    output$oParam1    <- renderPrint({input$inParam1})
    output$oParam2    <- renderPrint({input$inParam2})
    output$oAnswer    <- renderPrint({switch(input$inFormula,
         "Area - Rectangle" = (input$inParam1 * input$inParam2), 
         "Area - Triangle" = ((input$inParam1 * input$inParam2)/2), 
         "Volume - Pyramid" = ((input$inParam1 * input$inParam2)/3), 
         "Volume - Cylinder" = ((3.1416 * (input$inParam1)^2) * input$inParam2), 
         "Volume - Cone" = ((3.1416 * (input$inParam1)^2) * input$inParam2)/3 
         )
    })
  })
})

