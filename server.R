library(UsingR)
fs<- read.csv("data/father_son.csv")
fh=fs$fheight
sh=fs$sheight

shinyServer(
    function(input, output) {
        output$newPlot <- renderPlot({
            plot(fh,sh, xlab='Fathers Height', ylab ='Sons Height', col='lightblue',main='Expected sons height based on his fathers')
            mu <- input$mu
            h.line <- mean(sh[round(fh)==round(mu)])
            abline(v=mu, h=h.line,col="red",lwd=1)
            text(61, 77, paste("Sons height = ",  round(h.line,1)))
        })
        
    }
)