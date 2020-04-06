shinyServer(
 function(input,output, session){
   
   output$myPlot <- renderPlot({
     
     disType <- input$Distribution
     size <- input$SampleSize
     
     if(disType == "NOrmal"){
       randomVec <-rnorm (size, mean = as.numeric(input$Mean), sd = as.numeric(input$Sd))
     }else{
       randomVec <- rexp(size, rate = 1/as.numeric(input$Lambda))
     }
     
     hist(randomVec, col = "blue")
     
   })
 }
  
)