shinyUI(pageWithSidebar(
  headerPanel("How much money should I be making?"),
  sidebarPanel(
    h2('Your Information'),
    numericInput('id1', 'Age', 30, min = 0, max = 90, step = 1),
    numericInput('wage', 'Annual Salary', 50000, min = 0, max = 1000000, step = 1),
    radioButtons("education", "Education:",
                 c("Less than HS Grad" = "1. < HS Grad",
                   "HS Grad" = "2. HS Grad",
                   "Some College" = "3. Some College",
                   "College Grad" = "4. College Grad",
                   "Advanced Degree" = "5. Advanced Degree")),
    radioButtons("jobclass", "Job Class:",
                 c("Industrial" = "1. Industrial",
                   "Information" = "2. Information"))
  ),
  mainPanel(
    h2('What is going on here??'),
    p('Do you live in the mid-atlantic region of the United States? Are you a male of working age? 
      Have you ever wanted to see how your salary compares to people with similar traits? If you 
      answered yes to those questions then this site is for you.'),
    h3('How does this work?'),
    p('Simple! Using the controls in the left panel select the criteria that you wish to filter on.
      As you do, the diagrams and data below will update to show how you stand out in the pack!'),
    plotOutput('ageWage'),
    h3('So... how accurate is this?'),
    p('Actually, this is not really that accurate. This does show you where your information sits
      in the dataset, but the dataset is limited to just 3000 observations and is a few years old. 
      You can find out more about this dataset in the R ISLR package from the 
      book: Introduction to Statistical Learning.')
  )
))