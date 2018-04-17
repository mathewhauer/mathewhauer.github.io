library(tidyverse)


#----Input the Papers----
papers <- tribble(
  ~number,~year,  ~title, ~authors, ~tenure, ~tenurable, ~idea, ~written, ~submitted, ~underreview, ~accepted, ~published,~journal,~project,
  1, 2013, "3d geovisualization", "Hauer", 0, 0, 1, 1, 1, 1, 1,1, "Spatial Demography", "misc",
  2, 2013, "iTFR 1", "Hauer, Baker, Brown", 0, 0, 1, 1, 1, 1, 1,1, "PLoS One",  "iTFR",
  3, 2015, "Georgia SLR", "Hauer, Evans, Alexander", 0, 0,1, 1, 1,1, 1, 1, "Pop & Env", "dissertation",
  4, 2016, "Millions", "Hauer, Evans, Mishra", 0, 0,1, 1, 1, 1, 1,1, "Nature Climate Change", "dissertation",
  5, 2017, "Foor insecurity", "Shannon, Hauer, Shannon, Weaver", 0, 0,1,1,1,1,1,1, "Professional Geographer", "misc",
  6, 2017, "DMC life tables", "Shannon, Hauer", 0, 0,1, 1, 1, 1, 1,1, "Justice Quarterly", "misc",
  7, 2017, "Migration SLR", "Hauer", 0, 0, 1, 1, 1, 1, 1,1, "Nature Climate Change", "dissertation",
  8, 2018, "SoVI SLR Georgia", "Hardy, Hauer", 0, 0, 1, 1, 1,1, 1, 1, "Professional Geographer", "SLR 1",
  9, 2018, "iTFR Carl 1", "Schmertmann, Hauer", 0, 0, 1, 1, 1, 1,1, 1, "Statistical Modelling", "iTFR",
  10, 2019, "CC Life expectancy", "Hauer, Santos", 1, 0,1, 1, 1, 1, 0, 0, "Nature Climate Change", "CC mortality",
  11, 2019, "Louisiana SLR", "Hauer, Hardy, Mishra, Pippin", 1, 1,1, 1, 1, 1, 0, 0, "Pop & Env", "dissertation",
  12, 2019, "iTFR2", "Hauer, Schmertmann", 1,0,1,1,0,0,0,0,"Science", "iTFR",
  13, 2019, "Fukushima", "Hauer, Holloway, Oda",1,1,1,1,1,0,0,0,"Pop & Env", "dissertation",
  14, 2019, "County Pop Projections", "Hauer",1,1,1,1,0,0,0,0,"Scientific Data", "county projections",
  15, 2019, "SLR Exposure", "Hauer, SLR Group",1,0,1,1,0,0,0,0, "Nature Climate Change", "SLR 1",
  16, 2019, "SLR National Exposure", "Hauer, Hardy, SLR Group",1,0,1,0,0,0,0,0, "Nature Climate Change", "SLR 1",
  17, 2019, "iTFR County", "Hauer, Schmertmann",1,1,1,0,0,0,0,0,"Demography", "iTFR"
)

#----Input the Journals----
journals <- tribble(
  ~journal, ~impactfactor,
  "Spatial Demography", 0,
  "PLoS One", 2.806,
  "Pop & Env", 1.766,
  "Nature Climate Change", 19.304,
  "Professional Geographer", 1.407,
  "Justice Quarterly", 3.072,
  "Statistical Modelling", 0.977,
  "Science", 37.205,
  "Scientific Data", 4.83,
  "Demography", 2.802
  
)


#----Merge----
papers <- left_join(papers, journals)

(tot<-sum(papers$tenure))
(sociology<-sum(papers$tenurable))
(ratio<-sociology/tot)
