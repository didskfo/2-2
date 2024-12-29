mydata = read.table("data.txt")

data_raw = nrow(mydata)
print(data_raw)

lm_V3 = lm(V3~V2,data=mydata)
lm_V3_summary = summary(lm_V3)
alpha = round(lm_V3_summary$coefficients[1,1],3)
beta = round(lm_V3_summary$coefficients[2,1],3)
print(c(alpha, beta))

p_value_1 = round(lm_V3_summary$coefficient[1,4],3)
p_value_2 = round(lm_V3_summary$coefficient[2,4],3)
print(c(p_value_1, p_value_2))

res2 = round(lm_V3_summary$r.squared,3)
print(res2)

newdata = data.frame(V2=70)
print(round(predict(lm_V3, newdata, interval = "confidence", level=0.95),3))
print(round(predict(lm_V3, newdata, interval = "predict", level=0.95),3))

bmp(file="res.bmp")
data.res = rstandard(lm_V3)
plot(mydata$V2, data.res, ylab="Standardized Residual", xlab="V2", main="Standardized Residuals")
abline(0,0)
dev.off()