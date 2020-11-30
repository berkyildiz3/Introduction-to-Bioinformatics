source("https://bioconductor.org/biocLite.R")
biocLite("GEOquery")

library(GEOquery)
dset<-getGEO("GDS2577")
eset<-GDS2eSet(dset, do.log2=TRUE)
x<-exprs(eset)

#create subset50
subset50 <- x[sample(1:nrow(x), 50,
                      replace=FALSE),]
d50 <- dist(subset50, method = "euclidean") # distance matrix
fit <- hclust(d50, method="ward")
#plot dendrogram
plot(fit)

#create heatmap
heatmap(as.matrix(d50))
palette<-colorRampPalette(c("#f0f3ff", "#0033BB"))(256)
heatmap(as.matrix(d), Colv=F, scale="none", col=palette)

#create subset100
subset100 <- x[sample(1:nrow(x), 100,
                          replace=FALSE),]
d100 <- dist(subset100, method = "euclidean") # distance matrix
fit <- hclust(d100, method="ward") 
#plot dendrogram
plot(fit)

#heatmap
heatmap(as.matrix(d100))
palette<-colorRampPalette(c("#f0f3ff", "#0033BB"))(256)
heatmap(as.matrix(d), Colv=F, scale="none", col=palette)



 
