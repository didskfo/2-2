data = read.table("data.txt")
a_2 = as.integer(data[,2] / 1000)
a_3 = as.integer(data[,3] / 1000)
print(as.integer(range(a_2)))
print(as.integer(mean(a_2)))
print(as.integer(var(a_2)))
print(as.integer(sd(a_2)))
print(as.integer(min(a_2)))
print(as.integer(max(a_2)))
breaks = seq(min(a_3)-1, max(a_3)+8, by=8)
high.cut = cut(a_3, breaks, right=FALSE)
high.freq = table(high.cut)

print(cbind(high.freq))

bmp(file="aa.bmp")
hist(a_3, breaks, col="lightgray", xlab="High", ylab="Count", main="Frequency", right=FALSE)
dev.off()

bmp(file="bb.bmp")
a_4 = data[1:100,4]
a_5 = data[1:100,5]
plot(cbind(a_4, a_5), xlab="High", ylab="Low", main="Scatter")
dev.off()