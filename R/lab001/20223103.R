data = read.table("data0.txt")
print(nrow(data))
print(ncol(data))
L <- data[, 2] >= data[, 3]*1.025
print(data[L,])
L2 <- data[, 1] == "2023.08.25"
print(data[L2, 2])

