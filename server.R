library(shiny)
shinyServer(
    function(input, output) {
        output$oid1 <- renderPrint({input$start_date})
        output$oid2 <- renderPrint({input$end_date})
        output$odate <- renderPrint({
            if(input$start_date > input$end_date)
                "Start Date should be early !"
            else 
                max(as.numeric(difftime(input$end_date,input$start_date,units = "days"))+1*input$id1+(input$id2-1),0)
        })
    }
)