library(shiny)
data(diamonds)
attach(diamonds)
require(ggplot2)
library(UsingR)

shinyUI(pageWithSidebar( headerPanel("Example plot"), 
sidebarPanel(
selectInput('cut', 'choose diamond cut',choices=levels(cut),)
),
mainPanel( 
renderPlot(plotOutput(print('plot1')))
 ) 
))







