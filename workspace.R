library(tercen)
library(dplyr)

options("tercen.workflowId" = "0add2df8c4543198d0b9ab7b55003e76")
options("tercen.stepId"     = "d732d42f-cb7d-4402-9639-ca768ccba766")

getOption("tercen.workflowId")
getOption("tercen.stepId")

ctx <- tercenCtx()

ctx %>% 
  select(.y, .ci, .ri) %>%
  count(.ri, .ci) %>%
  group_by(.ri) %>%
  mutate(prop_per_row = n / sum(n)) %>%
  group_by(.ci) %>%
  mutate(prop_per_col = n / sum(n)) %>%
  ungroup() %>%
  mutate(prop_overall = n / sum(n)) %>%
  ctx$addNamespace() %>%
  ctx$save()
