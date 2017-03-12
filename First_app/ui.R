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
                                             #h4('Single Checkbox'),
                                             fluidRow(
                                             column(h4('Single Checkbox'), width=6),
                                            column(h4('Radio Buttons'), width=6)),
                                             #checkboxInput('checkbox', label='Choice A', value=F), width=6),
                                            fluidRow(
                                             column(checkboxInput('checkbox', label='Choice A', value=F), width=6)
                                               ),
                                             fluidRow(
                                            column(
                                             checkboxGroupInput('checkGroup', label = h4('Checkbox Group'), choices = list('First' = 1, 'Second' = 2, 'Third' = 3), selected = 2), width=6),
                                            column(selectInput('select', label= h4('Select Input'), choices = list('First' = 1, 'Second' = 2), selected = 2), width = 6)
                                            ),
                                            fluidRow(
                                             column(
                                             dateInput('Date', label='DateInput', value='2017-03-02'), width=6),
                                             column(sliderInput('slider1', label= 'Sliders', min=0, max=100, value=c(10,90)), width=6)),
                                            fluidRow(
                                            column(
                                             dateRangeInput('dates', label=h4('Data Range')), width=6),
                                            column(textInput('text', label='Text Input', value='Some text'), width=6)),
                                             fileInput('file', label = 'File Input')), 
                                mainPanel(h2('Main'), tabsetPanel(type='tabs', 
                                                                  tabPanel('Data Table', dataTableOutput('Table')), tabPanel('Summary'),
                                                                  tabPanel('K Means', column(
                                                                    radioButtons('radiobuttons', label='Select Image', choices = list('First'=1, 'Second'=2), selected = 2), width = 6 
                                                                  ), submitButton('Submit'),
                                                                  renderImage('Image'))), br(), br(),
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

