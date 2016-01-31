shinyUI(fluidPage(
  titlePanel("Blood sugar levels in diagnosing diabetes"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("After performing plasma blood, enter your data in the folowing tow steps"),
      
      selectInput("var", 
                  label = "Step 1 :Choose Test Type",
                  choices = c("Random"=1, "Fasting"=2,
                              "2 hour post-prandial"=3),
                  selected = 1),
      sliderInput("glucose", label = h3("Enter Blood Glucose level"),
                  min = 50, max = 500, value = 120)
      

    ),
    
    mainPanel(
      h3("Test Type"),
      br(),
      textOutput("text1"),
      br(),
      h3("Result"),
      textOutput("text2")
    )

  )
))