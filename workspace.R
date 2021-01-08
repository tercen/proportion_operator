library(tercen)
library(dplyr)

options("tercen.workflowId" = "01cb95cd7b746443ed9f40625200ef4f")
options("tercen.stepId"     = "635b15c9-55d2-466d-bda9-6e9469b67532")

getOption("tercen.workflowId")
getOption("tercen.stepId")

(ctx = tercenCtx())  %>% 
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
