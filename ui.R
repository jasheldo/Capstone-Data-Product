#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("JHU Data Science Capstone - Next Word Predictor"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       helpText("Enter your phrase to the right. Your predicted next word 
                will appear under, also on the right hand side. There is no 
                need to press <Return>. The page will auto-refresh.")
    ),
    
    mainPanel(
        textInput("input.string", label = h3("Input"), value = "I like to"),
        h4("Original input:"),
        verbatimTextOutput("clean"),
        h4("Primary Prediction"),
        verbatimTextOutput("my.prediction"),
        h4("Other predicted values"),
        verbatimTextOutput("other.choices")
    )
  )
))
