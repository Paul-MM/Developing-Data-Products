library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Developing Data Products Course Project: Are the course instructors human?  This app will allows you to answer some simple questions about the course instructor to determine if the course instructors are in fact human."),
                sidebarPanel(
                    numericInput('id1', 'How many legs do each of the course instructors have?', 0, min=0, max=8, step=1),
                    checkboxGroupInput("id2", "How many arms do each of the course instructors have?",
                                       c("One arm" ="1",
                                         "Two arms" ="2",
                                         "Three arms" ="3",
                                         "Four arms" = "4",
                                         "Five arms" = "5",
                                         "Six arms" = "6",
                                         "Seven arms" = "7",
                                         "Eight arms" = "8")),
                
            
                        
                        sliderInput("id3", 
                                    label = "How many fingers & toes does the course instructor have?",
                                    min = 0, max = 50, value = 1),
              
                    dateInput("date", "Select the date your answer is relevant:")
                    
                ),
        mainPanel(
                h4('Your count of their legs is:'),
                verbatimTextOutput("oid1"),
                h4('Your count of their arms is:'),
                verbatimTextOutput("oid2"),
                h4('Your count of their fingers & toes is:'),
                verbatimTextOutput("oid3"),
                h4('Your counts were made on this date:'),
                verbatimTextOutput("odate"),
                h3('If your count of legs or arms exceeds exceeds two, then perhaps a recount is required. Similarly if your count of fingers & toes exceeds 20 then a recount is required. Although as a good data scientiest I would argue we have insufficient data to answer this question.')
                )
))
