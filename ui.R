library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel("Iris Scatter Plot"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create a scatter plot with information from iris flower data. You can compare
               either the lengths of sepal and petal or widths of sepal and petal"),
      checkboxGroupInput("species", label = h3("Choose Species"), 
                         choices = list("Setosa" = "setosa", "Versicolor" = "versicolor", "Virginica" = "virginica"),
                         selected = "setosa"),
      hr(),
      selectInput("select", label = h3("Select Either Length or Width"), 
                  choices = list("Length" = "Length", "Width" = "Width"), 
                  selected = "Length")
    ),
    mainPanel(
      plotlyOutput("drawIris")
      )
  )
))