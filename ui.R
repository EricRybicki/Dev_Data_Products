shinyUI(pageWithSidebar(
    headerPanel("Predict sons height"),
    sidebarPanel(
        sliderInput('mu', 'Enter Fathers Height',value = 70, min = 60, max = 75, step = 0.05,)
        
    ),
    mainPanel(
        h5('Using correlated data of the height of father and son pairs we can predict the expected height of the 
            son based on the height of the father.'),
        plotOutput('newPlot')
    )
))