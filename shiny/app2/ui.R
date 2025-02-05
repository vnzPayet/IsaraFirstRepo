
library(shiny)

ui <- fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput(inputId = "classe",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      selectInput(inputId = "couleur",
                  label = "Choisir une couleur",
                  choices = c("lightgrey", "blue", "red"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      textOutput(("monTexte"))
    )
  )
)