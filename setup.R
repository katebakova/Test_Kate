#set up
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }


#install.packages("lterdatasampler")
#install.packages("rstatix")
#install.packages("httr")
#install.packages("jsonlite")
#install.packages("dataRetrieval")

packages <- c('tidyverse', 'palmerpenguins', 'rmarkdown', 
              'ggthemes', 'RColorBrewer', 'viridis', 'ggdark', 'plotly', 'lterdatasampler', 'rstatix', 'httr', 'jsonlite','dataRetrieval')

packageLoad(packages)

