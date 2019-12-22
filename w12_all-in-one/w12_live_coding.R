# install.packages("tidyverse")
# library(tidyerse)
data(starwars)
starwars %>% class()
starwars %>% dim()

starwars
starwars %>% as.data.frame() # old school data.frame

starwars_tbl <- starwars
starwars_df  <- starwars %>% as.data.frame()
starwars_df[, 1]
starwars_df %>% "["(1)
starwars_tbl[, 1]
starwars_tbl[, 1, drop = TRUE]

########## dplyr

starwars %>% select(name)
select(starwars, name)
select(starwars, 1) # how tidy is this?

starwars %>% 
  select(matches("color"), name, everything())

starwars %>% 
  select(-ends_with("color"))

starwars %>% 
  mutate(gender = as.factor(gender))

starwars %>%
  mutate(bmi = 1e4 * mass / (height * height)) %>%
  select(name, height, mass, bmi, everything())

starwars %>% rename(`Name` = name)
starwars %>% rename(`:)` = height)

starwars %>% filter(species == "Human")
starwars %>% filter(is.na(gender) & species == "Human")
starwars %>% filter(is.na(gender), species == "Human")

starwars %>% filter_all(any_vars(is.na(.)))
starwars %>% filter_all(all_vars(!is.na(.)))

starwars %>% tidyr::drop_na() #  na.omit() then?
starwars %>% na.omit() # a relief

####### drop_na() treats character(0) etc specially 
df <- data.frame(x = 1:3, y = letters[1:3])
df$z <- c(list(character()), list("X"), list(NULL))
df %>% drop_na()
df %>% na.omit()

## dplyr::arrange
starwars %>% arrange(height)
starwars %>% arrange(height %>% desc())
starwars %>% arrange(height %>% desc(), mass %>% desc())

starwars %>% slice(1)
starwars %>% slice(n())
starwars %>% slice(seq(1, n()))

# dplyr conditionals
starwars %>% # _if : logical, or function generating logical (.predicate)
  select_if(sample(c(FALSE, TRUE), ncol(.), replace = TRUE))

starwars %>% # optional: a renaming function. 
  select_if(sample(c(FALSE, TRUE), ncol(.), replace = TRUE),
            ~ paste0(toupper(.x), "_SELECTED"))

starwars %>% # optional: a renaming function. 
  select_all(paste0, "_SELECTED")

# vars environment: can use select-helpers
starwars %>% 
  select_at(vars(matches("color")))


############# dplyr summarise
starwars %>% 
  summarise(
    mean_height = mean(height, na.rm = TRUE)
  )

starwars %>% 
  summarise(
    mean_height = mean(height, na.rm = TRUE),
    sd_height = sd(height, na.rm = TRUE)
  )

starwars %>% 
  summarise(
    mean_height = summary(height)
  )

starwars %>%
  summarise_at(vars(contains("color")), n_distinct)

############# extra: anonymous functions, bang bangs etc.
f_fun <- function(x) length(unique(x))
starwars %>%
  summarise_at(vars(contains("color")), funs(n_distinct, !!function(x) length(unique(x))))

starwars %>%
  summarise_at(vars(contains("color")), funs(n_distinct, f_fun))

##### group_by
starwars %>% 
  group_by(species) %>%
  summarise(mean_height = mean(height, na.rm = TRUE))

starwars %>% 
  group_by(species) %>%
  mutate(mean_height = mean(height, na.rm = TRUE)) %>%
  select(species, mean_height, everything()) %>%
  ungroup()

##################### Tidyr

# <!---
#   Spread a key-value pair across multiple columns. Use it when an a column contains observations from multiple variables.
# 
# Gather takes multiple columns and collapses into key-value pairs, duplicating all other columns as needed. You use gather() when you notice that your column names are not names of variables, but values of a variable.
# -->

starwars_colors <- starwars %>% select(name, species, contains("color"))

starwars_colors_lf <- starwars_colors %>% 
  gather(key = species, value = color, contains("color"))

starwars_colors_wf <- starwars_colors_lf %>% 
  spread(key = species, value = color) 

starwars_names <- starwars %>%
  separate(name, into = c("First", "Last"), sep = "-")

starwars_names %>% unite(col = name, First, Last, sep = "-")

################# ggplot2

library(gapminder)
#?gapminder
gapminder %>% dplyr::glimpse()



