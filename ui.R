#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
data("mtcars")
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predicting Vehicle mileage using random forest and linear model"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("cyl",
                   "Number of cylinder:",
                   min = 4,
                   max = 8,
                   value = 4),
       sliderInput("disp",
                   "Displacement",
                   min = 30,
                   max = 500,
                   value = 30),
       sliderInput("hp",
                   "Horsepower",
                   min = 20,
                   max = 1000,
                   value = 20),
       sliderInput("wt",
                   "Weight in tonnes",
                   min = 1,
                   max = 10,
                   value = 1),
       submitButton("Submit")
         
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       #plotOutput("distPlot")
      h3("Predicted Mileage from rf"),
      textOutput("pred1"),
      h3("Predicted Mileage from lm"),
      textOutput("pred2")
    )
  ),
  h3("- Please use sliders to input value for cylinder, displacement, horsepower and weight (in tonnes)"),
  h3("- Click submit to get the results")
))
