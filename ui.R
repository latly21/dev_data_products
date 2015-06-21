


library(shiny)
library(ggplot2)
library(datasets)
# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("Plot of  Cars Data"),
    
    # Create a new Row in the UI for selectInputs
    fluidPage(
    
      sidebarPanel(
        h3("Input Section"),
        helpText("Choose an option from the drop-down."),
        selectInput("parm", "Select Parameter:", 
                    choices=colnames(mtcars)),
        hr(),
        h3("Documentation"),
        helpText("This project utilizes the mtcars dataset.",
                 "It is very simple and only requires that you select a parameter.",
                 "Once you have selected a paremeter the data will be plotted.")
      ),
     
# Create a spot for the histogram
mainPanel(
  plotOutput("plot1")))))

