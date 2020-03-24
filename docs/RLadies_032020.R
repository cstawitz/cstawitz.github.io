require(dplyr)
?mutate

################# browser()

input_data <- list(c(1, 5, 7), 
                   5, 
                   c(10, 10, 11))
foo <- 1:10

sum_the_cols <- function(dat){
  browser()
  
  tibble(list_col = input_data) %>%
    mutate(list_sum = sum(list_col))
}

str(input_data)
sum_the_cols(foo)

############## debugonce

debugonce(mutate)
foo <- c(1,2,3)

tibble(list_col = foo) %>%
  mutate(list_sum = sum(list_col))

sum_the_cols <- function(dat){
  tibble(list_col = dat) %>%
    mutate(list_sum = sum(list_col))
}


debugonce(sum_the_cols)
sum_the_cols(foo)

############## debugonce

sum_the_cols <- function(dat){
  browser()
  tibble(list_col = dat) %>%
    mutate(list_sum = sum(list_col))
}


sum_the_cols(foo)



############## writing a note


foo <- c(1,2,3)

sum_the_cols <- function(dat){
  if(is.list(dat)){
    stop("Error: mutate doesn't work on list inputs!")
  }
  tibble(list_col = dat) %>%
    mutate(list_sum = sum(list_col))
}

sum_the_cols(input_data)
