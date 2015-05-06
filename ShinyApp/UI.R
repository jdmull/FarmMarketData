# Based from census app code in http://shiny.rstudio.com/tutorial/lesson5/ 
# includes code from https://groups.google.com/forum/#!topic/shiny-discuss/zgSJ0j5SqBs
# ui.R

##library(googleCharts)

shinyUI(pageWithSidebar(
  titlePanel("Listing of United States Farmers Markets from data.gov"),
  sidebarPanel(
          helpText("Choose a state, it will be the input that the server.r file uses to create a dataframe."),
          selectInput("State", 
                  label = "State",
                  choices = c("Alabama",              "Alaska",               "Arizona",             
                              "Arkansas",             "California",          
                              "Colorado",             "Connecticut",          "Delaware",            
                              "District of Columbia", "Florida",              "Georgia",             
                              "Hawaii",               "Idaho",                "Illinois",            
                              "Indiana",              "Iowa",                 "Kansas",              
                              "Kentucky",             "Louisiana",            "Maine",               
                              "Maryland",             "Massachusetts",        "Michigan",            
                              "Minnesota",            "Mississippi",          "Missouri",            
                              "Montana",              "Nebraska",             "Nevada",              
                              "New Hampshire",        "New Jersey",          
                              "New Mexico",           "New York",            
                              "North Carolina",       "North Dakota",         "Ohio",                
                              "Oklahoma",             "Oregon",               "Pennsylvania",        
                              "Puerto Rico",          "Rhode Island",         "South Carolina",      
                              "South Dakota",         "Tennessee",            "Texas",               
                              "Utah",                 "Vermont",              "Virgin Islands",      
                              "Virginia",             "Washington",          
                              "West Virginia",        "Wisconsin",            "Wyoming")    
          )),  ## end of select input, end of sidebar panel

  mainPanel(
      h3(textOutput("Farmers Markets")),
      helpText("The search, column sort, number of records, & record navigation are part of a shiny data view widget. To sort or select a column for search, click on a column header."), 
      dataTableOutput("table")
    )
  )
)


