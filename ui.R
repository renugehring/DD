shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Savings Forecasting"),
    sidebarPanel(
      numericInput('beg', 'Savings', 5000, min = 1000, max = 10000, step = 500),
      numericInput('years', 'Years', 10, min = 2, max = 40, step = 2),
      numericInput('interest', 'Rate of Return', 5.0, min = 3.0, max = 10, step = .5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of Savings Forecasting'),
      h4('Beginning Amount You entered'),
      verbatimTextOutput("inputValue1"),
      h4('Years You entered'),
      verbatimTextOutput("inputValue2"),
      h4('Rate of Return You entered'),
      verbatimTextOutput("inputValue3"),
      h4('Compounded quarterly'),
      h4('Which resulted in an ending amount of '),
      verbatimTextOutput("savings")
    )
  )
)