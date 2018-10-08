#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(caret)
library(shiny)
library(randomForest)

data("mtcars")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  trainControl <- trainControl(method = "repeatedcv",number =10, repeats = 5)
  
  
  mod_rf <- train(data=mtcars, mpg ~ cyl+disp+hp+wt, method="rf", trControl = trainControl)
  mod_lm <- lm(data=mtcars, mpg ~ cyl+disp+hp+wt)
  mod1_pred <- reactive({
    cyl <- input$cyl
    disp <- input$disp
    hp <- input$hp
    wt <- input$wt
    predict(mod_rf,data.frame(cyl=cyl,disp=disp,hp=hp,wt=wt))
  })
  mod2_pred <- reactive({
    cyl <- input$cyl
    disp <- input$disp
    hp <- input$hp
    wt <- input$wt
    predict(mod_lm,data.frame(cyl=cyl,disp=disp,hp=hp,wt=wt))
  })
  output$pred1 <- renderText(mod1_pred())
  output$pred2 <- renderText(mod2_pred())
   })

