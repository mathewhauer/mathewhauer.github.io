library(scholar)
library(tidyverse)

scholars <- tribble(
  ~scholar, ~University, ~Rank, ~YearPhD, ~ID, ~Type,
  "Matt Hauer", "FSU", "Assistant", 2016, "SI0ST5YAAAAJ", "",
  "Leah VanWey", "Brown", "Full", 2001, "orXblC4AAAAJ", "Aspirational",
  "Beth Fussell", "Brown", "Associate", 1998, "K0JmnvgAAAAJ", "Aspirational",
  "Clark Gray", "UNC-Chapel Hill", "Associate", 2008, "iWkPSDgAAAAJ", "Aspirational",
  "Joshua Goldstein", "Berkeley", "Full", 1996, "xR01n-sAAAAJ", "Aspirational",
  "Brian Thiede", "Penn State", "Assistant", 2014, "BhqzUvMAAAAJ", "Peer",
  "Jack DeWaard", "Minnesota", "Assistant", 2013, "pzaqmWYAAAAJ", "Peer",
  "Ashton Verdery", "Penn State", "Assistant", 2015 , "x0hHFh8AAAAJ", "Peer",
  "Anne Barrett", "FSU", "Full", 1992, "zMzb8eMAAAAJ", "Colleague",
  "Wolfgang Lutz", "IIASA", "Full", 1983, "QRH1wRYAAAAJ", "Aspirational",
  "Hiram Beltran-Sanchez", "USC", "Associate", 2009, "WKlQeJsAAAAJ", "Award",
  "Jason Boardman", "UC-Boulder", "Full", 2002, "QOZAiO0AAAAJ", "Award",
  "Yang Claire Yang", "UNC-Chapel Hill", "Full", 2005, "ftiJp4kAAAAJ", "Award",
  "Aliya Saperstein", "Stanford", "Associate", 2007, "KPaSND8AAAAJ", "Award",
  "Jenna Nobles", "Wisconsin", "Associate", 2007, "DqwADa8AAAAJ", "Award",
  "Hans-Peter Kohler", "U Penn", "Full", 1997, "LxGeqB0AAAAJ", "Aspirational",
  "Robert Hummer", "UNC-Chapel Hill", "Full", 1993, "rfgSZsAAAAAJ", "Aspirational",
  "Brian ONeill", "NCAR", "Full", 1999, "JDwtajkAAAAJ", "Aspirational",
  "Francesco Billari", "Bocconi" , "Full", 1998 , "-JR6yo4AAAAJ", "Aspirational",
  "Wendy Manning", "Bowling Green", "Full", 1992, "n7EP8qUAAAAJ", "PRESIDENT",
  "Daniel Lichter", "Cornell", "Full", 1981, "6-C8WyIAAAAJ", "PRESIDENT",
  "Doug Massey", "Princeton", "Full", 1978, "T758DcgAAAAJ", "HAHAHA"
)

scholars$num = NA
scholars$numperyear = NA

topjournals <- c("American Journal of Sociology",
                 "American Journal of sociology",
                 "American journal of sociology",
                 "american journal of sociology",
                 "American journal of Sociology",
                 "American Sociological Review",
                 "American Sociological review",
                 "American sociological review",
                 "american sociological review",
                 "Annual Review of Sociology",
                 "Annual Review of sociology",
                 "Annual review of sociology",
                 "annual review of sociology",
                 "Social Forces",
                 "Social forces",
                 "social forces",
                 "Demography",
                 "Nature Climate Change",
                 "Nature climate change",
                 "Nature",
                 "Science",
                 "Proceedings of the National Academy of Sciences")

for (i in 1:nrow(scholars)) {
  scholars$num[i] = get_num_top_journals(scholars$ID[i], topjournals)
  scholars$numperyear[i] = scholars$num[i] /(2018-scholars$YearPhD[i])
}
scholars$scholar

a<-get_publications("-JR6yo4AAAAJ")

get_num_top_journals("1mVlABAAAAAJ", topjournals)


