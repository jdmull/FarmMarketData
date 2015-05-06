## The source for this dataset is:
## https://apps.ams.usda.gov/FarmersMarketsExport/ExcelExport.aspx
markets<-read.csv("data/Export.csv",sep=",",strip.white=T)
library(googleVis)

## A small amount of data cleaning
markets<-markets[complete.cases(markets),]
markets$State[markets$State=="Virigina"]<-"Virginia"
markets$State[markets$State=="Calafornia"]<-"California"

shinyServer(
    function(input, output) {

      ## Creating a data table for farmers markets within the given state
      output$table <- renderDataTable({
        tbl<-markets[markets$State %in% c(input$State),]
        tbl<-tbl[,c("MarketName","Season1Time","city","street","Website")]
        tbl
      })
    }
)

