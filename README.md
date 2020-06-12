# coursera-getting-and-cleaning-data---project
The script "run_analysis.R" does the following:

1. download's the file required for the project which is rawdata.zip from the given url using download.file(),
and the read th evarious files important for the project into various datasets using "read.table()".

2. we merge the test and train dataset using rbind() for x ,y,subidentity of train and test, and finally merge these
to create one dataset using cbind().

3. extract the columns containing information for mean and std using grep(),and also give each column some discriptive
and meaningful name.

4. remove all unwanted characters like "()","-" from the dataset using gsub(),replacing them with "" ,and also writing 
abbrevations into their full form.
 
5. make a tidy dataset which contains average of dataset for each subject and each activity they perform ,
there can be various ways to do that but here melt() and then casting is used.

6. finally dataset is written into a text file to be shared using write.table().
