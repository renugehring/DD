library(shiny)
EndingAmount <- function(beg,years,interest) {
  i=interest/100
  (beg)*((1+i/4)**(years*4))
}
shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$beg})
    output$inputValue2 <- renderPrint({input$years})
    output$inputValue3 <- renderPrint({input$interest})
    output$savings <- renderPrint({EndingAmount(input$beg,input$years,input$interest)})
  }
)