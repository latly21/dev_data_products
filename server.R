 library(shiny)
   
   # Load the ggplot2 package which provides
   # the 'mpg' dataset.
   library(ggplot2)
    
   # Define a server for the Shiny app
   shinyServer(function(input, output) {
     
      # Filter data based on selections
     output$plot1 <- renderPlot({
       
     barplot(mtcars[,input$parm], 
             main="Car Distribution",
             ylab=input$parm
             )
     })
     
   })

