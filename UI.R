#page with sidebar
shinyServer(
  pageWithSidebar(
    headerPanel ("My first shiny app"),
    sidebarPanel (
      selectInput("Distribution", "Please select Distribution type",
                  choices=c( "Normal", "Exponential")),
      sliderInput("SampleSize", "Please select sample size", 
                  min = 100, max = 5000, value = 1000, step = 100),
      conditionalPanel(condition = "Input.Distribution == 'Normal'", 
                       textInput("Mean", "Please select the mean", 10), 
                       textInput("Sd", "Please select standard deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("Lambda", "Please select lamba value", 1))
      
    ), 
    mainPanel (
      plotOutput("myPlot")
    )
    
  )
  
  
)
