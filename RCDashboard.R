

Agg_Recent<- table1 %>% 
  count(YEAR,Q,Hospname,Sex,Nationality,HTS_RECENT) 

Agg_RecentResult<- table1 %>% 
  count(YEAR,Q,Hospname,Sex,Nationality,`HTS_RECENT recent result`)

#-------------------------------------------------------------------------------
# Save data frames for dashboard in one data file (RCDashboard.RData) 
#-------------------------------------------------------------------------------

save(
  list = c(
    "Recency_BSMS",
    "Recency_site_list",
    "TabIND_2021Q1",
    "TabIND_2021Q2",
    "TabIND_2021Q3",
    "TabIND_2021Q4",
    "TabIND_2022Q1",
    "TRC"
    # "Agg_Recent",
    # "Agg_RecentResult"
  ),
  file = paste0(data_folder, "/RCDashboard.RData")
)