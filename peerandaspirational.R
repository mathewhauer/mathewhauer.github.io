library(scholar)
library(tidyverse)
 
scholars <- tribble(
  ~scholar, ~University, ~Rank, ~YearPhD, ~ID, ~Type,
  "Matt Hauer",      "FSU", "Assistant", 2016, "SI0ST5YAAAAJ", "",
  "Leah VanWey",     "Brown", "Full", 2001, "orXblC4AAAAJ", "Aspirational",
  "Beth Fussell",    "Brown", "Associate", 1998, "K0JmnvgAAAAJ", "Aspirational",
  "Clark Gray",      "UNC-Chapel Hill", "Associate", 2008, "iWkPSDgAAAAJ", "Aspirational",
  "Joshua Goldstein", "Berkeley", "Full", 1996, "xR01n-sAAAAJ", "Aspirational",
  "Brian Thiede", "Penn State", "Assistant", 2014, "BhqzUvMAAAAJ", "Peer",
  "Jack DeWaard", "Minnesota", "Assistant", 2013, "pzaqmWYAAAAJ", "Peer",
  "Ashton Verdery", "Penn State", "Assistant", 2015 , "x0hHFh8AAAAJ", "Peer",
  "Anne Barrett", "FSU", "Full", 1992, "zMzb8eMAAAAJ", "Colleague",
  "Wolfgang Lutz", "IIASA", "Full", 1983, "QRH1wRYAAAAJ", "Aspirational",
  "Hiram Beltran-Sanchez", "USC", "Associate", 2009, "WKlQeJsAAAAJ", "Award Early",
  "Jason Boardman", "UC-Boulder", "Full", 2002, "QOZAiO0AAAAJ", "Award Early",
  "Yang Claire Yang", "UNC-Chapel Hill", "Full", 2005, "ftiJp4kAAAAJ", "Award Early",
  "Aliya Saperstein", "Stanford", "Associate", 2007, "KPaSND8AAAAJ", "Award Early",
  "Jenna Nobles", "Wisconsin", "Associate", 2007, "DqwADa8AAAAJ", "Award Early",
  "Hans-Peter Kohler", "U Penn", "Full", 1997, "LxGeqB0AAAAJ", "Award Mid",
  "Robert Hummer", "UNC-Chapel Hill", "Full", 1993, "rfgSZsAAAAAJ", "Award Mid",
  "Brian ONeill", "NCAR", "Full", 1999, "JDwtajkAAAAJ", "Aspirational",
  "Francesco Billari", "Bocconi" , "Full", 1998 , "-JR6yo4AAAAJ", "Award Mid",
  "Wendy Manning", "Bowling Green", "Full", 1992, "n7EP8qUAAAAJ", "PRESIDENT",
  "Daniel Lichter", "Cornell", "Full", 1981, "6-C8WyIAAAAJ", "PRESIDENT",
  "Guangqing Chi", "Penn State", "Associate", 2006, "5HRNTzAAAAAJ", "Peer",
  "Elizabeth Frankenberg", "UNC-Chapel Hill", "Full", 1992, "K9cUPCAAAAAJ", "Aspirational",
  "Lori Hunter", "UC-Boulder", "Full", 1997, "qSIV-ZYAAAAJ", "Aspirational",
  "Barbara Entwisle", "UNC-Chapel Hill", "Full", 1980, "eADTLHUAAAAJ", "PRESIDENT",
  "John Iceland", "Penn State", "Full", 1997, "hdM9OIIAAAAJ", "Aspirational",
  "Liana Sayer", "UMD", "Full", 2001, "x44eCpYAAAAJ", "Aspirational",
  "Susan Brown", "Bowling Green", "Full", 1998, "tmQssW4AAAAJ", "Award Mid",
  "Jennifer Van Hook", "Penn State", "Full", 1996, "Fk9a3NEAAAAJ", "Award Mid",
  "Kyle Crowder", "Washington", "Full", 1997, "3vh0XakAAAAJ", "Award Mid",
  "Kathleen Mullan Harris", "UNC-Chapel Hill", "Full", 1988, "SRV3VCUAAAAJ" , "Award Mid",
  "John Logan", "Brown", "Full", 1974, "lZ8iOiwAAAAJ", "Aspirational",
  "Paula England", "NYU", "Full", 1975, "u8_cxocAAAAJ", "Harriet B. Presser Award",
  "James Vaupel", "MPIDR", "Full", 1978,"xTyO1rEAAAAJ", "Mindel C. Sheps Award",
  "Sara McLanahan", "Princeton", "Full", 1979, "Wp5P5TwAAAAJ", "Irene B. Taeuber Award",
  "Steven Ruggles", "Minnesota" , "Full", 1985, "nvIl0pUAAAAJ", "President",
  "Robert Mare", "UCLA", "Full", 1977, "R77Xmr0AAAAJ", "President",
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
                 "Global Environmental Change",
                 "Proceedings of the National Academy of Sciences",
                 "Jama")

for (i in 1:nrow(scholars)) {
  scholars$num[i] = get_num_top_journals(scholars$ID[i], topjournals)
  scholars$years[i] = 2018-scholars$YearPhD[i]
  scholars$numperyear[i] = scholars$num[i] /(2018-scholars$YearPhD[i])
}
scholars$scholar

# a<-get_publications("K9cUPCAAAAAJ")

# get_num_top_journals("5HRNTzAAAAAJ", topjournals)

ecdf(scholars$numperyear)(scholars$numperyear[which(scholars$scholar == "Matt Hauer")])

quantile(scholars$numperyear, 0.5)



