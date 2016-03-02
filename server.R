library(dplyr)
library(shiny)
library(plotly)

shinyServer(function(input, output) {
    
    output$drawIris <- renderPlotly({ 
      d <- iris %>% filter(Species == input$species)
      plot_ly(d, 
              x = eval(parse(text = paste0("Sepal.", input$select))),
              y = eval(parse(text = paste0("Petal.", input$select))),
              mode = "markers",
              color = Species) %>%
        layout(title = paste("Iris", input$select, "Comparison"),
               xaxis = list(title = paste("Sepal", input$select), range = c(0, 8)),
               yaxis = list(title = paste("Petal", input$select), range = c(0, 8))
               )
    })
    
  }
)