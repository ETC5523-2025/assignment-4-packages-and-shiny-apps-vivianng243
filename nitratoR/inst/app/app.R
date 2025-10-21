library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
library(bslib)

ui <- page_sidebar(
  title = "NEON water-quality (2023)",
  sidebar = sidebar(
    radioButtons("dataset", "Dataset:", c("Nitrate" = "n", "Temperature" = "t")),
    checkboxGroupInput(
      "sites", "Sites:",
      choices  = c("ARIK","CARI","LEWI"),
      selected = c("ARIK","CARI","LEWI")
    ),
    hr(),
    h4("Fields"),
    helpText(HTML(
      "Site: NEON site code (ARIK/CARI/LEWI)<br>
       Month: Jan–Dec<br>
       Measurement: Nitrate: µmol/L; Temp: °C."
    )),
    h4("How to interpret"),
    helpText(HTML(
        "Boxplots show intra-month distributions by site.<br>
        <span style='font-size:90%; font-style:italic;'>
         Note: Nitrate data of ARIK are unavailable.
        </span>"
    ))
  ),
  theme = bs_theme(bootswatch = "flatly"),
  card(
    card_header("Interactive plot"),
    plotlyOutput("plt", height = 420)
  )

)

server <- function(input, output, session) {


  dat <- reactive({
    d <- if (input$dataset == "n") {
      nitratoR::nitrate_tidy
    } else {
      nitratoR::temp_tidy
    }
    d |>
      filter(site %in% input$sites) |>
      mutate(month = factor(month, levels = month.abb, ordered = TRUE))
  })

  output$plt <- renderPlotly({
    if (input$dataset == "n") {
      ycol <- "surfWaterNitrateMean"; ylab <- "Nitrate (µmol/L)"
    } else {
      ycol <- "surfWaterTempMean";    ylab <- "Temperature (°C)"
    }

    p <- ggplot(dat(), aes(x = month, y = .data[[ycol]], fill = site)) +
      geom_boxplot(outlier.alpha = 0.3) +
      scale_x_discrete(limits = month.abb) +
      labs(x = NULL, y = ylab) +
      theme_bw()

    ggplotly(p)
  })
}

shinyApp(ui, server)
