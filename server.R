
shinyServer(
  
  function(input, output) {
   
   
    output$text1<- renderText({
      if (input$var == 1){
         paste("Random Test")
      }else if(input$var ==2){
        paste("Fasting Test")
      }else{
        paste("3 hours post prandial Test")
      }
      
    })
    
    output$text2 <- renderText({ 
      choice <- input$var 
      glevel <- input$glucose
    switch (choice,
    '1' = {
      if(glevel < 200)
        paste("Normal level")
      else
        paste("Diabetes")
    },
    '2'={
      if(glevel < 108)
        paste("Normal")
      else if(glevel < 125 )
        paste("Prediabetes")
      else
        paste("Diabetes")
    },
    '3'={
      if(glevel < 140)
        paste("Normal")
      else if(glevel <= 199 )
        paste("Prediabetes")
      else
        paste("Diabetes")
    }
    )
      
    })
    
    
  }
  
  
  
)