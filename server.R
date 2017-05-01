#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

data_titanic <- as.data.frame(Titanic)
Titanic_Model<- glm(Survived ~ Class + Sex + Age, binomial,data_titanic, data_titanic$Freq)
Prediction_Titanic <-function(class,sex,age){
  input_d<- c(class,sex,age)
  prediction_d <- as.data.frame(t(input_d))
  
  colnames(prediction_d) <- c("Class","Sex","Age")
  Survival_titanic_p <- predict(Titanic_Model, type="response")
  return(Survival_titanic_p)
}


# Define server logic required to draw a histogram
shinyServer(
  function(input, output) {
   
  output$prob <-renderText({Prediction_Titanic(input$c, input$s, input$a)})
  }
)

