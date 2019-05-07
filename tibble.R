require(tidyverse)
as_tibble(chickwts)
as_tibble(chickwts) %>%
  print(n=15, width=Inf)
as_tibble(chickwts) %>% View()




tribble(
  ~x, ~y, ~z,
   0,  0,  0,
   1,  1,  1,
   2,  2,  2,
)