library(shiny)
shinyUI(fluidPage(titlePanel(h1(strong('Shiny App'))), 
                  sidebarLayout(sidebarPanel(h1('Menu')), 
                                mainPanel(h2('Main'))
                                , position = 'left')))
#runApp('First_app')