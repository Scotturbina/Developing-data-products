
shinyUI(fluidPage(
  # Application title
  titlePanel("Speed Cars prediction"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("Distance","Distance in ft" ,min = 2, max = 120, value = 20, step = 1),
      submitButton("Click here to Predict results")
    ),
    
    #Here we are going to print the predictions
    
    mainPanel(
      p("The objective of this project is to display a interactive prediction app of 
        the speed of the cars based on their distance that they stopped, model is going to show
        the upper and lower limit of the speed"),
      p("Slider is going to be for distance , by moving the slider
        the lower and upper limit of the speed is going to change"),
      p("Algorithm used is a simple linear model"),
      p("Also the model explains ~ 64% of the data"),
      p("Prediction for the Speed based on the distance stopped:"),
      verbatimTextOutput("indpred")
      
    )
  )
))

      
     