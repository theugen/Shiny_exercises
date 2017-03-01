library(shiny)
shinyUI(fluidPage(
  titlePanel('Widgets',
             br()),
  
  fluidRow(h3('Buttons'),
           actionButton('action', label = 'Action'),
           br(),
           br(),
           submitButton('Submit')
           ),
  sidebarPanel(h4('Actionbutton'), 
               actionButton('per', label='Perform'))))
