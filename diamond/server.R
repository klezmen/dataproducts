library(Ecdat)
data(PatentsRD)
attach(PatentsRD)
data(diamond)

shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(spil)
      sector <- input$sector
      })

  }
)
