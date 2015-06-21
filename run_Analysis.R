run_Analysis <-function()
{
        ## Include required libraries
        ## library(reshape2)

              
        ## Reading the dataframe's column names
        features <- read.table("features.txt")
        feature_Names <-  features[,2]
        
        ## Reading the test data and labelling the dataframe's columns
        testData <- read.table("X_test.txt")
        colnames(testData) <- feature_Names
        
        ## Read the training data and label the dataframe's columns
        trainData <- read.table("X_train.txt")
        colnames(trainData) <- feature_Names
        
        ##Combine the test data and the train data into one dataframe
        allData <- rbind(trainData,testData, header=TRUE)
               
        ## Create a file with the new tidy dataset
        write.table(allData,"myTidyData.txt")
}
