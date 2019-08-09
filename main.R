
library(crimedata)
library(kableExtra)
library(knitr)

title <- "virtulis"
title_gradient <- paste(text_spec(title, color = spec_color(1:length(text), end = 0.9)), collapse = "")
title_gradient

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

# text_tbl <- data.frame(
#   Items = c("Item 1", "Item 2", "Item 3"),
#   Features = c(
#     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vehicula tempor ex. Morbi malesuada sagittis turpis, at venenatis nisl luctus a. ",
#     "In eu urna at magna luctus rhoncus quis in nisl. Fusce in velit varius, posuere risus et, cursus augue. Duis eleifend aliquam ante, a aliquet ex tincidunt in. ", 
#     "Vivamus venenatis egestas eros ut tempus. Vivamus id est nisi. Aliquam molestie erat et sollicitudin venenatis. In ac lacus at velit scelerisque mattis. "
#   )
# )
# 
# kable(text_tbl) %>%
#   kable_styling(full_width = F) %>%
#   column_spec(1, bold = T, border_right = T) %>%
#   column_spec(2, width = "30em", background = "yellow")





# kable(dt) %>%
#   kable_styling("striped", full_width = F) %>%
#   column_spec(5:7, bold = T) %>%
#   row_spec(3:5, bold = T, color = "white", background = "#D7261E")









