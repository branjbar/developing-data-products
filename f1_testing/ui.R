# the third ui.R I've ever written
library(shiny)
shinyUI(pageWithSidebar(headerPanel("Illustrating Markup"),
                         sidebarPanel(
                           numericInput('id1', 'Numeric input, labeled id1', 0, min = 0, max = 10, step = 1),
                           checkboxGroupInput('id2', 'checkbox',
                                              c("Value 1" = "1",
                                                "Value 2" = "2",
                                                "Value 3" = "3")),
                           dateInput("date","Date:")
                         ),
                         mainPanel(
                         h3('Illustrating Outputs'),
                         h4('You entered'),
                         verbatimTextOutput('oid1'),
                         h4('you entered'),
                         verbatimTextOutput('oid2'),
                         h4('you entered'),
                         verbatimTextOutput('odate')
                         )
                         ))