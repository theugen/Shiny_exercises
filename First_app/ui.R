library(shiny)
shinyUI(fluidPage(titlePanel(h1(strong('Shiny App'))), 
                  sidebarLayout(sidebarPanel(h1('Menu'),
                                             fluidRow(
                                             column(
                                             h4('Actionbutton'),
                                             actionButton('per', label='Perform'), width=6),
                                             column(
                                             h4('Help Text'), helpText('For help'), width=6)),
                                             fluidRow(column(width=6), 
                                             column(numericInput(h4('number'), inputId='Numeric Input', value=10), width=6)),
                                             br(),
                                             h4('Submit button'),
                                             submitButton('Submit'),
                                             #h4('Single Checkbox'),
                                             fluidRow(
                                             column(
                                            h4('Single Checkbox'),
                                             checkboxInput('checkbox', label='Choice A', value=F), width=6),
                                             column(
                                              radioButtons('radiobuttons', label='Radio Buttons', choices = list('First', 'Second')), width = 6 
                                             )),
                                             
                                             checkboxGroupInput('checkGroup', label = h4('Checkbox Group'), choices = list('First' = 1, 'Second' = 2, 'Third' = 3), selected = 2),
                                             dateInput('Date', label='DateInput', value='2017-03-02'),
                                             dateRangeInput('dates', label=h4('Data Range')),
                                             fileInput('file', label = 'File Input')), 
                                mainPanel(h2('Main'), br(), br(),
                                          img(src='petal.png', height=150, width=200),
                                          p('This famous (Fisher’s or Anderson’s)',
                                            a('iris', href = 'http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html'),
                                            'data set gives the measurements in centimeters of the variables sepal length and width
                                            and petal length and width, respectively, for 50 flowers from each of 3
                                            species of iris. The species are Iris',
strong('setosa'), ',', strong('versicolor'), ', and ', strong('virginica'),'.'),
                                          br(), h2('Analysis'))
                                , position = 'left')))
#runApp('First_app')