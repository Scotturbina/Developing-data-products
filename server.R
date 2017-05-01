#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

attach(cars)

fit.lm<- lm(speed ~ dist, cars)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  output$indpred <- renderPrint({
    ## Building the frame of data
    Data_new<- data.frame(dist=input$Distance)
    
    #Generating all the predictions individually
    
    m1<- predict(fit.lm,Data_new, interval="predict")
    
    # Print result of the prediction
    
    m1
  })
  
  output$pred<-renderPrint({
    
  })
})

    
  
                 
  