dat <- read.csv('../data/Advertising.csv', row.names = 1)  
head(dat)

tv = dat$TV
sales = dat$Sales

reg = lm(sales~tv)
sum_reg = summary(reg)

save(reg,sum_reg, file = "../data/regression.RData")

plot(dat$TV, dat$Sales, pch = 19, col = "#8e8f94", xlab = "TV advertising budget", ylab = "Sales")
abline(reg, col = "#5679DF", lwd = 2)
dev.copy(pdf,"../images/scatterplot-tv-sales.pdf", width=8,height=6)
dev.off()
dev.copy(png,"../images/scatterplot-tv-sales.png", width=800, height=600)
dev.off()
dev.off()


