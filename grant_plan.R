library(tidyverse)


#----Input the Papers----
grants <- tribble(
  ~number,~year,  ~title, ~authors,  ~idea, ~written, ~submitted, ~underreview, ~funded, ~amount, ~funder,~project,
  1, 2018, "CPR SLR, urban policy, migration", "Hauer, Maxine Burkett lawyer, Shiela Foster lawyer, Alice Kaswan lawyer, David Flores CPR", 1, 0, 0, 0, 0, 100000, "Kresge", "SLR migration",
 2, 2018, "Climate Change Life Expectancy", "Hauer, Kooperman geophysicist", 1,0,0,0,0,100000, "NIH R03", "CC mortality",
 3, 2018, "Louisiana Matching Mortality Migration", "Hauer, Beth Fussell demographer",1,0,0,0,0,100000, "NIH R03", "CC mortality/SLR migration",
 4, 2018, "Climate Change mortality", "Hauer, Gribble statistician, Jesse Bell geophysicist",1,0,0,0,0,100000,"NIH R03", "CC mortality",
 5, 2019, "NSF CAREER", "HAUER", 0, 0,0,0,0,500000, "NSF", "SLR migration"
)

