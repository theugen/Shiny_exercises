library(shiny)
shinyUI(fluidPage(titlePanel(h1(strong('Shiny App'))), 
                  sidebarLayout(sidebarPanel(h1('Menu'),
                                             br(),
                                             h4('Actionbutton'),
                                             actionButton('per', label='Perform'),
                                             br(),
                                             h4('Submit button'),
                                             submitButton('Submit'),
                                             h4('Single Checkbox'),
                                             checkboxInput('checkbox', label='Choice A', value=F),
                                             h4('Checkbox group'),
                                             checkboxGroupInput('checkGroup', label = 'Checkbox Group', choices = list('First' = 1, 'Second' = 2, 'Third' = 3), selected = 2),
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