dat <- read.csv('../data/Advertising.csv', row.names = 1)  
sum_TV = summary(dat$TV)
sum_Sales = summary(dat$Sales)

sink(file = "../data/eda-output.txt")
cat("summary statistics of TV\n\n")
sum_TV
cat("\n")
cat("summary statistics of Sales\n\n")
sum_Sales
sink()

hist_TV=hist(dat$TV, ylim = c(0,20), col = "#5679DF"
     , main = "Histogram of TV advertising budget", breaks=15, xlab = "TV advertising budget (in thousands of dollars)")
dev.copy(pdf,"../images/histogram-tv.pdf",width=8,height=6)
dev.off()
dev.copy(png,"../images/histogram-tv.png", width=800, height=600)
dev.off()
dev.off()


hist(dat$Sales, xlim = c(0, max(dat$Sales+5)), ylim = c(0, 45), col = "#5679DF"
     , main = "Histogram of Sales", breaks=15, xlab = "Sales (in thousands of units)") 
dev.copy(pdf,"../images/histogram-sales.pdf", width=8,height=6)
dev.off()
dev.copy(png,"../images/histogram-sales.png", width=800, height=600)
dev.off()
dev.off()