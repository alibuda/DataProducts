library(shiny)

shinyUI(navbarPage("How many days between different Dates",
                   tabsetPanel(
                       tabPanel("Documents",
                                mainPanel(
                                    includeHTML("Documents.html")
                                )
                       ),
                       tabPanel("Output1",
                                sidebarPanel(
                                    dateInput("start_date1", "Start Date:"),
                                    dateInput("end_date1", "End Date:"),
                                    checkboxInput("id11", "Including Start Date",F),
                                    checkboxInput("id21", "Including End Date",T)
                                ),
                                mainPanel(
                                    h3('Output1'),
                                    h4('Start Date:'),
                                    verbatimTextOutput("oid11"),
                                    h4('End Date:'),
                                    verbatimTextOutput("oid21"),
                                    h4('Day Diff:'),
                                    verbatimTextOutput("odate1")
                                )
                       ),
                       tabPanel("Output2",
                                sidebarPanel(
                                    selectInput("SE","Start Date/End Date",list("Start Date","End Date")),
                                    dateInput("date", "Date:"),
                                    numericInput("diff","Day Diff:",value = 0,min = 0,step = 1)
                                ),
                                mainPanel(
                                    h3('Output2'),
                                    h4('Start Date:'),
                                    verbatimTextOutput("oid12"),
                                    h4('End Date:'),
                                    verbatimTextOutput("oid22"),
                                    h4('Day Diff:'),
                                    verbatimTextOutput("odate2")
                                )
                       )
                   )
))   