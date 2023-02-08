library(shiny)

# Define UI with TAB 
fluidPage(theme=shinytheme("sandstone"),
          navbarPage("Test d'onglet",
                  tabPanel("Onglet1", source("tab_1.R", local = TRUE)$value),
                  tabPanel("Onglet2", source("tab_2.R", local = TRUE)$value),
          )
)