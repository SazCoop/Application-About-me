shinyUI(pageWithSidebar(
  headerPanel("Google Charts Timeline"),
  sidebarPanel("Hover over the events & Scroll"),
  mainPanel(
    htmlOutput("view")
  )
 )
)
