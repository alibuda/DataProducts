library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("How many days between different Dates"),
    sidebarPanel(
        dateInput("start_date", "Start Date:"),
        dateInput("end_date", "End Date:"),
        checkboxInput("id1", "Including Start Date",F),
        checkboxInput("id2", "Including End Date",T)
    ),
    mainPanel(
        h3('Outputs'),
        h4('Start Date:'),
        verbatimTextOutput("oid1"),
        h4('End Date:'),
        verbatimTextOutput("oid2"),
        h4('Day Diff:'),
        verbatimTextOutput("odate")
    )
))