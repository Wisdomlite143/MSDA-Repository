IndianAirports <- read.csv("C:/Users/Public/projectfiles/IndianAirports.csv")
View(IndianAirports)


attach(IndianAirports)
names(IndianAirports)
hist(IndianAirports)


ggplot(department_name,aes(amount, grant_title)) + geom_bar()

require(ggplot2)
options(sscipen = 3)
qplot(IndianAirports.csv, 
      geom = "histogram", 
      binwidth = 25000,
      col = I("red"),
      fill = I("blue"),
      main = "TOTAL.PAX..IN.NOS.",
      xlab = "TOTAL.FREIGHT..IN.MT.",
      ylab = "TOTAL.ACM..IN.NOS."
)


options(scipen = 3)
qplot(IndianAirports.csv,
      data = IndianAirports, 
      geom = "point", 
      main = "INTERNATIONAL.FREIGHT..IN.MT.",
      xlab =  options(scipen = 3)
      
      qplot(IndianAirports.csv,
            data = IndianAirports,
            geom = "point", 
            main = "INTERNATIONAL.FREIGHT..IN.MT.",
            xlab = "INTERNATIONAL..ACM..IN.NOS.",
            ylab =  "INTERNATIONAL.PAX..IN.NOS."
      ),
 