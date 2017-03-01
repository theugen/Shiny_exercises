library(shiny)
shinyUI(fluidPage(titlePanel(h1(strong('Shiny App'))), 
                  sidebarLayout(sidebarPanel(h1('Menu')), 
                                mainPanel(h2('Main'),
                                          p('This famous (Fisher’s or Anderson’s)', a('iris', href = 'http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html'), 'data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.'))
                                , position = 'left')))
#runApp('First_app')