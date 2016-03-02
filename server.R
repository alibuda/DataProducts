library(shiny)
shinyServer(
    function(input, output) {
        output$oid11 <- renderPrint({input$start_date1})
        output$oid21 <- renderPrint({input$end_date1})
        output$odate1 <- renderPrint({
            if(input$start_date1 > input$end_date1)
                "Start Date should be early !"
            else 
                max(as.numeric(difftime(input$end_date1,input$start_date1,units = "days"))+1*input$id11+(input$id21-1),0)
        })
        output$oid12 <- renderPrint({
            if(input$SE == "Start Date")
                input$date
            else
                input$date - input$diff
        })
        output$oid22 <- renderPrint({
            if(input$SE == "End Date")
                input$date
            else
                input$date + input$diff
        })
        output$odate2 <- renderPrint({input$diff})

    }
)