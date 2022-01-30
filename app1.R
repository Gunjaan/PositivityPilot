library(shiny)
library(shinythemes)
# Define UI
ui <- fluidPage(theme = shinytheme("flatly"),
navbarPage(theme = "yeti","WHAT AFFIRMATION YOU NEED",
                  tabPanel("<3",
                           mainPanel(
                             h1("Hey! <3"),
                             
                             h4("Here's your affirmation for the day!"),
                             verbatimTextOutput("txtout"),
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel(";)", "Refresh as many times you need an affirmation! <3")
                  
                ) # navbarPage
) # fluidPage

data <- read.csv("positiveaff.csv")
# Define server function  
server <- function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, sep = " " )
    paste(data[sample(nrow(iris), 1), ])
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)
