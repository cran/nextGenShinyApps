## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE,echo=TRUE-----------------------------------------------------
#  
#  # library
#  library(nextGenShinyApps)
#  
#  # load.example(EXAMPLEx)
#  # Where EXAMPLEx can be either “Plain”, “noSideBar”, “Card”, “Tab”,
#  # “Modal”, “Form”, “Button”, “Spinner”, “Alert”, “Accordion”
#  

## ----eval=FALSE,echo=TRUE-----------------------------------------------------
#  
#  # library
#  library(shiny)
#  library(nextGenShinyApps)
#  if(interactive()) {
#  # Define UI
#  ui <- fluidPage(
#    # Theme: Select color style from 1-13
#    style = "6",
#  
#    # Header: Insert header content using titlePanel ------------
#    header = titlePanel(left = "A Demo to Showcase the Features of the nextGenShinyApp R package", right = "Image logo"),
#  
#    # Sidebar: Insert content for sidebar ----------------------
#    sidebar = sidebarPanel(
#      title = "NextGenShinyApp",
#      "Sidebar content"
#    ),
#  
#    # Body: Insert anything into the body--------------------
#    tags$h2("Basic Moveable Advanced Card"),
#    row(
#      column(
#        width = 8,
#        card(
#          title = "Standard card with text and a slider",
#          # card body content
#          tags$h4("Sample text"),
#          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Mi bibendum neque egestas congue quisque egestas",
#          tags$br(), tags$br(),
#          tags$h4("Input slider for the image"),
#          sliderInput(
#            inputId = "bins",
#            label = "Number of bins:",
#            min = 1,
#            max = 50,
#            value = 30
#          )
#        )
#      ),
#      column(
#        width = 4,
#        card(
#          title = "Standard card with Images",
#          plotOutput(outputId = "distPlot")
#        )
#      )
#    )
#  )
#  
#  # Define server content
#  server <- function(input, output) {
#  
#    # Sample user-defined sever logic
#    output$distPlot <- renderPlot({
#      x <- faithful$waiting
#      bins <- seq(min(x), max(x), length.out = input$bins + 1)
#  
#      hist(x,
#        breaks = bins, col = "#75AADB", border = "white",
#        xlab = "Waiting time to next eruption (in mins)",
#        main = "Histogram of waiting times"
#      )
#    })
#  }
#  
#  # Create and initialize the Shiny application
#  shiny::shinyApp(ui, server)
#  }
#  
