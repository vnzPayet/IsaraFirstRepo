library(shiny)

server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$classe + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = input$couleur, border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
    })
    
    output$monTexte <- renderText({
      
      paste("Le nombre de classe est  :", input$classe)
      
    })
    
}