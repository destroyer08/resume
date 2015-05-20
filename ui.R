library(shiny)

shinyUI(fluidPage(
  tagList(
    tags$head(
      tags$script(type="text/javascript", src = "busy.js")
    )
  ),
  div(class = "busy",  
      
      img(src="ajaxloaderq.gif"),align="center"
  ),
                  title = "Resume",
                  h3(tags$b("Pratik Dekate"),align="center"),
                  fluidRow(column(3),column(6,h4("Software Engineer-Data Analytics at Paxcel Technologies Pvt Ltd, New Delhi",align="center")),column(2,offset=1,tags$a(href = 'resume.pdf', class = "btn", icon("download"), 'Full Resume',target="_blank"))),
                  #fluidRow(column(3,h5("File/Study:"),verbatimTextOutput("code"))),h3("Cluster Analysis",align="center")),
                  hr(),
                  fluidRow(column(5,plotOutput("skillset")), column(6,plotOutput("skillact"))),
                  br(),
                  br(),
                  h5(tags$b("My Education & Career Timeline"),align="center"),
                  fluidRow(column(1),column(9,htmlOutput("timeline")),column(2,offset=0.1,tags$a(href = 'https://github.com/destroyer08', 'View Projects(GitHub)',target="_blank"))),
                  fluidRow(column(5,plotOutput("interest")),column(1),column(5,plotOutput("hobby"))),
                  h6(tags$b("@ copyright 2015. Pratik Dekate. All rights reserved."),align="center")
))
