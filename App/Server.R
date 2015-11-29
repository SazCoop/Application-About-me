library(dplyr)
require(googleVis)
## googleVis 0.5.0-3

ww2 <- read.csv("data/w2.csv")
ww2 <- data.frame(ww2)

ww2[,3] <- as.Date(ww2[,3], "%m/%d/%Y" )
ww2[,4] <- as.Date(ww2[,4], "%m/%d/%Y")


shinyServer(function(input, output, session) {
    
    output$view <- renderGvis({
      gvisTimeline(ww2, rowlabel = "Person", barlabel = "Group", start = "StartDate", end = "EndDate",
                   options=list(
                     timeline="{rowLabelStyle:{fontName:'Helvetica', 
                                           fontSize:10, color:'#603913'},
                            barLabelStyle:{fontName:'Garamond', 
                                           fontSize:12}}",
                     backgroundColor='#ffd', height=220,
                     colors="['#3366cc', '#dc3912', '#ff9900', '#109618', '#990099', '#0099c6', '#dd4477']"),
                   chartid="timeline")
    })
  })
