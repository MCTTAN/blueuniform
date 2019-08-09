
library(crimedata)
library(kableExtra)
library(knitr)
library(formattable)
library(dplyr)

data_crime <- get_crime_data()
data_crime

list_crime_data()

subtable <- subset(data_crime, city_name == "Austin")

write.table(subtable, "/cloud/project/data_exported/data_crime_exported.txt", sep="\t")

subtable %>% kable() %>% kable_styling(bootstrap_options = c("striped", "hover", "responsive"),
                                       position = "center",
                                       font_size = 10,
                                       fixed_thead = list(enabled = TRUE, background = "yellow")
                                       )






