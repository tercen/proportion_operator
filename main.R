library(tercen)
library(dplyr)

ctx <- tercenCtx()

ctx %>% 
  select(.y, .ci, .ri) %>%
  count(.ri, .ci) %>%
  mutate(n = as.double(n)) %>%
  group_by(.ri) %>%
  mutate(prop_per_row = n / sum(n)) %>%
  group_by(.ci) %>%
  mutate(prop_per_col = n / sum(n)) %>%
  ungroup() %>%
  mutate(prop_overall = n / sum(n)) %>%
  ctx$addNamespace() %>%
  ctx$save()
