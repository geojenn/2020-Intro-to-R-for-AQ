# Import AirNow Tech unpivoted Mid-Atlantic Ozone data and tidy the data.

data <- read.csv("NMidAtl1029O3.csv")


data$date <- paste(data$Date..LST., data$Time..LST.)

data$date <- data$date %>% 
  mdy_hm() %>% 
  as_datetime() 

data$time <- data$Time..LST. %>% 
  hm() %>% 
  hour()


data$o3 <- data$Value



#data$Site <- paste0("Site.", data$Site)

data <- data %>% select(o3, Agency, Site.AQS, Method, date, time)

str(data)

data <- data %>% write.csv("MD_o3_1029_tidy.csv")