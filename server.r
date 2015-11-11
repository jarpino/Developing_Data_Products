library(shiny)
library(ISLR); library(ggplot2); library(caret);
shinyServer(
  function(input, output) {
      output$ageWage <- renderPlot({
        inputData <- data.frame(age = c(input$id1)
                                , wage = c(input$wage/1000)
                                , jobclass = c(input$jobclass)
                                , education = c(input$education));
        qplot(age,wage, data = Wage, shape = jobclass, colour = education)+geom_point(data = inputData, size = 10)
      })
  }
)