install.packages("dplyr")
library("dplyr")

features <- read.table(file = "features.txt")

features$V2 <- paste("Avg_",features$V2, sep = "")

activity <- read.table(file = "activity_labels.txt"
                       , col.names = c("Activity_Number", "Activity")
                       )
subject_train <- read.table(file = "subject_train.txt"
                            , col.names = "Subject")
x_train <- read.table(file = "x_train.txt"
                      , col.names = features[,2]
                      )
y_train <- read.table(file = "y_train.txt"
                      , col.names = "Activity_Number"
                      )
subject_test <- read.table(file = "subject_test.txt"
                           , col.names = "Subject")
x_test <- read.table(file = "x_test.txt"
                     , col.names = features[,2]
                     )
y_test <- read.table(file = "y_test.txt"
                     , col.names = "Activity_Number"
                     )

y_train <- inner_join(y_train, activity, by = "Activity_Number")
y_test <- inner_join(y_test, activity, by = "Activity_Number")

train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)

df <- rbind(train,test)

rm("x_test","y_test","x_train","y_train","test","train","activity","subject_test","subject_train")

features <- as.vector(features$V2)
features <- c("Subject","Activity_Number","Activity", features)

MSTable <- df[,c(1:3,grep("mean",features),grep("std",features))]

rm("df", "features")

tidydata <- data.frame(Subject=as.character()
                       ,Activity=as.character()
                       ,stringsAsFactors = FALSE)                       

for(i in 4:length(MSTable)){
  build <- as.data.frame(as.table(tapply(MSTable[,i],list(MSTable$Subject,MSTable$Activity), FUN = mean)))
  names(build) <- c("Subject", "Activity", colnames(MSTable)[[i]])
  build[,1:2] <- data.frame(lapply(build[,1:2], as.character), stringsAsFactors = FALSE)
  tidydata <- right_join(tidydata,build, by = c("Subject", "Activity"))
}

rm("build", "i", "MSTable")

write.table(tidydata, "H:/tidydata.txt", sep="\t")
