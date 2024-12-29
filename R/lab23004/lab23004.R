library(MASS)
L1 = mtcars$am == 0
mpg.auto = mtcars[L1,]$mpg
t1 = t.test(mpg.auto, conf.level = 0.99)$conf.int
t1_ran = c(t1[1], t1[2])
print(t1_ran)

mpg.manual = mtcars[!L1,]$mpg
t2 = t.test(mpg.manual, alternative = "greater", mu = 20)
p_value = t2$p.value
print(p_value)

data = read.table("data.txt")

res1 = t.test(data$V3, data$V2, paired=TRUE)$conf.int
res1_ran = c(res1[1], res1[2])
print(res1_ran)

res2 = t.test(data$V3, data$V2)$conf.int
res2_ran = c(res2[1], res2[2])
print(res2_ran)

L3 = data$V3>data$V2
data_table = data[L3,]
data_len = nrow(data)
data_table_len = nrow(data_table)
res3 = c(data_len, data_table_len)
print(res3)

#res_prop = prop.test(n=data_len, x=data_table_len)
#res4 = res_prop$estimate
#print(res4)
res4 = mean(data$V3 > data$V2)
print(res4)

res5 = prop.test(n=data_len, x=data_table_len)$conf.int
res5_ran = c(res5[1], res5[2])
print(res5_ran)

