#Getting and cleaning data project

#modifications
following changes were made in original file:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average
of each variable for each activity and each subject.

#first two columns are identifiers
1. subidentity: gives the number of the subject.(there are a total of 30 subjects)
2. activity: gives which activity is this.(there are a total of 6 different activities. )

#rest all column names are 
I believe description of each of the below col names are not necessary as they are the measaurments of means and standard deviations
of the data set and one can see what they mean by their decriptive names.
t is for time
and f is for frequency

    tbodyaccelerometermeanx
    tbodyaccelerometermeany
    tbodyaccelerometermeanz
    tbodyaccelerometerstdx
    tbodyaccelerometerstdy
    tbodyaccelerometerstdz
    tgravityaccelerometermeanx
    tgravityaccelerometermeany
    tgravityaccelerometermeanz
    tgravityaccelerometerstdx
    tgravityaccelerometerstdy
    tgravityaccelerometerstdz
    tbodyaccelerometerjerkmeanx
    tbodyaccelerometerjerkmeany
    tbodyaccelerometerjerkmeanz
    tbodyaccelerometerjerkstdx
    tbodyaccelerometerjerkstdy
    tbodyaccelerometerjerkstdz
    tbodygyroscopemeanx
    tbodygyroscopemeany
    tbodygyroscopemeanz
    tbodygyroscopestdx
    tbodygyroscopestdy
    tbodygyroscopestdz
    tbodygyroscopejerkmeanx
    tbodygyroscopejerkmeany
    tbodygyroscopejerkmeanz
    tbodygyroscopejerkstdx
    tbodygyroscopejerkstdy
    tbodygyroscopejerkstdz
    tbodyaccelerometermagnitudemean
    tbodyaccelerometermagnitudestd
    tgravityaccelerometermagnitudemean
    tgravityaccelerometermagnitudestd
    tbodyaccelerometerjerkmagnitudemean
    tbodyaccelerometerjerkmagnitudestd
    tbodygyroscopemagnitudemean
    tbodygyroscopemagnitudestd
    tbodygyroscopejerkmagnitudemean
    tbodygyroscopejerkmagnitudestd
    fbodyaccelerometermeanx
    fbodyaccelerometermeany
    fbodyaccelerometermeanz
    fbodyaccelerometerstdx
    fbodyaccelerometerstdy
    fbodyaccelerometerstdz
    fbodyaccelerometermeanfrequencyx
    fbodyaccelerometermeanfrequencyy
    fbodyaccelerometermeanfrequencyz
    fbodyaccelerometerjerkmeanx
    fbodyaccelerometerjerkmeany
    fbodyaccelerometerjerkmeanz
    fbodyaccelerometerjerkstdx
    fbodyaccelerometerjerkstdy
    fbodyaccelerometerjerkstdz
    fbodyaccelerometerjerkmeanfrequencyx
    fbodyaccelerometerjerkmeanfrequencyy
    fbodyaccelerometerjerkmeanfrequencyz
    fbodygyroscopemeanx
    fbodygyroscopemeany
    fbodygyroscopemeanz
    fbodygyroscopestdx
    fbodygyroscopestdy
    fbodygyroscopestdz
    fbodygyroscopemeanfrequencyx
    fbodygyroscopemeanfrequencyy
    fbodygyroscopemeanfrequencyz
    fbodyaccelerometermagnitudemean
    fbodyaccelerometermagnitudestd
    fbodyaccelerometermagnitudemeanfrequency
    fbodyaccelerometerjerkmagnitudemean
    fbodyaccelerometerjerkmagnitudestd
    fbodyaccelerometerjerkmagnitudemeanfrequency
    fbodygyroscopemagnitudemean
    fbodygyroscopemagnitudestd
    fbodygyroscopemagnitudemeanfrequency
    fbodygyroscopejerkmagnitudemean
    fbodygyroscopejerkmagnitudestd
    fbodygyroscopejerkmagnitudemeanfrequency
