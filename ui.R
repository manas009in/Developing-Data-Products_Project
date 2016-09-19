library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("You Vital Stats - Body Mass Index (BMI) Calculator"),
    
    sidebarPanel(
      numericInput('Weight', 'Input your weight in kilograms', 70) ,
      numericInput('Height', 'Input your height in metres', 1.70, min = 0.2, max = 3, step = 0.01),
      submitButton('Enter')
    ), 
    mainPanel(
      p('The body mass index (BMI) or Quetelet index is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres.'),
      p('Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-25) : Normal weight'),
          tags$li('BMI [25-30)   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('From the values entered by you on left side pane:'), 
      p('Weight:'), verbatimTextOutput("inputweightvalue"),
      p('Height:'), verbatimTextOutput("inputheightvalue"),
      h4('Your calculated BMI is:'),
      verbatimTextOutput("estimation"),
      p('You Are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)