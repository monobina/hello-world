setwd("C:/Users/mmukherjee/Desktop/R home/Server Connect/Customer")
CC <- read.csv("allcustomercalltype.csv", stringsAsFactors=FALSE)
ggplot(CC,aes(x=Calltype,y=Frequency, fill=Calltype)) + geom_bar(position="dodge", colour="black", stat="identity") +
  scale_fill_brewer(palette="Set3") # bar graph with different colors
CC <- read.csv("customercall.csv", stringsAsFactors=FALSE)
ggplot(CC, aes(x=Code)) + geom_bar() # plotting frequency using the count function
ggplot(CC, aes(x=Code, fill=Code)) + geom_bar(colour="black",position="dodge") + scale_fill_brewer(palette="Set3")
 # generating count graph of call type with color
CC <- read.csv("calltype.csv", stringsAsFactors=FALSE)
 UCC <- subset(CC,CC$CONS <=0) # creates a subset data file where the the call frequency for rebate is >=5
 write.csv(UCC,file= 'ZeroCallersCons.csv')
dc<- arrange(UCC,desc(REBATE))