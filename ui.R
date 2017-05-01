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
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Probability of Survival for Titanic data"),
  sidebarPanel(
    p("Please click in the selection criteria"),
    
    radioButtons("c", label= h3("Class"),
                 choices = list("1st Class"= "1st", "2nd Class"="2nd", "3rd Class"= "3rd", "Crew"="Crew"),
                 selected = "1st Class"),
    radioButtons("s", label= h3("Sex"),
                 choices = list("Male"= "Male", "Female"="Female"),
                 selected = "Male"),
    radioButtons("a", label= h3("Age"),
                 choices = list("Child"= "Child", "Adult"="Adult"),
                 selected = "Child")),
  
  # Show a plot of the generated distribution
  mainPanel(
    h3("Survival Probability test for Data Science course"),
    h4("The probability from the chosen option is:"),
    h4(textOutput('prob')),
    p("Take in consideration that the probability is based from a logistic regression model"),
    p("For this reason is going to be different to the historical, since the correlation factor is not 1")
  )
)
)