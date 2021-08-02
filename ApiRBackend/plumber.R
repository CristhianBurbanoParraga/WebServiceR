#
# This is a Plumber API. You can run the API by clicking
# the 'Run API' button above.
#
# Find out more about building APIs with Plumber here:
#
#    https://www.rplumber.io/
#

library(plumber)
library(ggplot2)
source('config.R')

#* @apiTitle Plumber Example API

#* @filter cors
cors <- function(res) {
  res$setHeader("Access-Control-Allow-Origin", "*")
  plumber::forward()
}

#* Plot a histogram by PositiveCases
#* @serializer png
#* @get /plotpositive
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = PositiveCases)) + 
    geom_histogram(bins = nclass.Sturges(data$PositiveCases)) +
    labs(title = "Casos Positivos",
         subtitle = "Frecuencia de casos confirmados de Covid-19",
         caption = "Datos extraidos desde SQL Server",
         x = "",
         y = "Frecuencia",
         colour = "Cylinders") 
  print(grafic)
}

#* Plot a histogram by ConfirmedDeaths
#* @serializer png
#* @get /plotdeaths
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = ConfirmedDeaths)) + 
    geom_histogram(bins = nclass.Sturges(data$ConfirmedDeaths)) +
    labs(title = "Muertes confirmadas",
         subtitle = "Frecuencia de muertes confirmados por Covid-19",
         caption = "Datos extraidos desde SQL Server",
         x = "",
         y = "Frecuencia",
         colour = "Cylinders") 
  print(grafic)
}

#* Plot a histogram by RecoveredPeople
#* @serializer png
#* @get /plotrecovery
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = RecoveredPeople)) + 
    geom_histogram(bins = nclass.Sturges(data$RecoveredPeople)) +
    labs(title = "Personas recuperadas",
         subtitle = "Frecuencia de personas curadas de Covid-19",
         caption = "Datos extraidos desde SQL Server",
         x = "",
         y = "Frecuencia",
         colour = "Cylinders") 
  print(grafic)
}

#* Plot a histogram by continent PositiveCases
#* @serializer png
#* @get /plotpositivecontinent
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = PositiveCases)) +
    geom_freqpoly(bins = nclass.Sturges(data$PositiveCases), color = "steelblue", size = 1.5) +
    facet_wrap(~ Continent) +
    labs(title = "Casos Positivos por Continente", 
         subtitle = "Frecuencia de casos positivos de Covid-19 en cada continente",
         caption = "Datos extraidos desde SQL Server",
         x  = "",
         y = "Frecuencia") 
  print(grafic)
}

#* Plot a histogram by continent ConfirmedDeaths
#* @serializer png
#* @get /plotdeathscontinent
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = ConfirmedDeaths)) +
    geom_freqpoly(bins = nclass.Sturges(data$ConfirmedDeaths), color = "steelblue", size = 1.5) +
    facet_wrap(~ Continent) +
    labs(title = "Muertes confirmadas por Continente", 
         subtitle = "Frecuencia de muertes por Covid-19 en cada continente",
         caption = "Datos extraidos desde SQL Server",
         x  = "",
         y = "Frecuencia") 
  print(grafic)
}

#* Plot a histogram by continent RecoveredPeople
#* @serializer png
#* @get /plotrecoverycontinent
function() {
  data = GetData()
  grafic = ggplot(data = data, aes(x = RecoveredPeople)) +
    geom_freqpoly(bins = nclass.Sturges(data$RecoveredPeople), color = "steelblue", size = 1.5) +
    facet_wrap(~ Continent) +
    labs(title = "Muertes confirmadas por Continente", 
         subtitle = "Frecuencia de muertes por Covid-19 en cada continente",
         caption = "Datos extraidos desde SQL Server",
         x  = "",
         y = "Frecuencia") 
  print(grafic)
}
