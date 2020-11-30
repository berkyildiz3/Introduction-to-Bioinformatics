source("https://bioconductor.org/biocLite.R")
biocLite("GEOquery")

library(GEOquery)
dset<-getGEO("GDS2577")
eset<-GDS2eSet(dset, do.log2=TRUE)
x<-exprs(eset)
xa <- na.omit(x)

subset150 <- xa[sample(1:nrow(xa), 150,
                     replace=FALSE),]

result = (prcomp(subset150, center=FALSE));
scores = result$rotation;
plot(scores[,1], scores[,2], xlab="PC1", ylab="PC2")




