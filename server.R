library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Normal Weight",ifelse(BMI_value<30,"Overweight","obesity")))
}

shinyServer(
  function(input, output) {
    
    output$inputweightvalue <- renderPrint({input$Weight})
    output$inputheightvalue <- renderPrint({input$Height})
    output$estimation <- renderPrint({BMI(input$Weight,input$Height)})
    output$diagnostic <- renderPrint({diagnostic_f(input$Weight,input$Height)})
  } 
)