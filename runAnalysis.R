library(dplyr)

#Reading in feature names
feature_names_df    = read.table('features.txt')
features            = feature_names_df[,2]
cols_with_std_or_mean_in_name = grep('mean[(][)]|std[(][)]',features)

features = sub('fBodyAcc','FastFourierTransformOfBodyAccelerometer',features)
features = sub('fGravityAcc','FastFourierTransformOfGravityAccelerometer',features)
features = sub('fBodyGyro','FastFourierTransformOfBodyGyroscope',features)

features = sub('tBodyAcc','TimeOfBodyAccelerometer',features)
features = sub('tGravityAcc','TimeOfGravityAccelerometer',features)
features = sub('tBodyGyro','TimeOfBodyGyroscope',features)

features = sub('Jerk','withJerking',features)
features = sub('Mag','andMagnitude',features)
features = sub('[(][)]','',features)
features = sub('[-]','_',features)

#features = sub('GravityAcc','GravityAccelerometer',features)
#features = sub('BodyAcc','BodyAccelerometer',features)
#features = sub('f','FastFourierTransformOf',features)
#Read in Activity Labels
activities          = read.table('activity_labels.txt')

#Reading in the training data set
subject_train_df    = read.table('train/subject_train.txt')
x_train_df          = read.table('train/X_train.txt')
y_train_df          = read.table('train/y_train.txt')

#Reading in the test data sets
subject_test_df     = read.table('test/subject_test.txt')
x_test_df           = read.table('test/X_test.txt')
y_test_df           = read.table('test/y_test.txt')

# Renaming the x training and test data sets
colnames(x_train_df) = features;
colnames(x_test_df) = features;

#Renaming the Subject Training Data Set
colnames(subject_train_df)  = c('Subject');
colnames(subject_test_df)   = c('Subject');

#Renaming the y_training and test data sets
colnames(y_train_df)    = c('Activity')
colnames(y_test_df)    = c('Activity')

#Merge same named datasets
total_subject_df    = rbind(subject_test_df, subject_train_df)
total_x_df          = rbind(x_test_df, x_train_df)
total_y_df          = rbind(y_test_df, y_train_df)

#Find only the columns in X with means or std
total_x_df = total_x_df[cols_with_std_or_mean_in_name]

#Add an Identifier Column to the data sets
total_subject_df$ID = seq(1:length(total_subject_df[,1]))
total_x_df$ID       = seq(1:length(total_x_df[,1]))
total_y_df$ID       = seq(1:length(total_y_df[,1]))

#Combine all datasets into one dataframe
#NOTE: There are  duplicated column names of the form
# fBodyGyro-bandsEnergy()-1,8, etc however they do not contain
# mean/std and are unncessary for our purposes
df_list = list(total_subject_df, total_x_df, total_y_df)
df = join_all(df_list, by = 'ID' )

# Renaming Activityctivity,Subject) %>% summarize_each(funs(mean))

df$Activity[ df$Activity == 1] = toString(activities[1,2])
df$Activity[ df$Activity == 2] = toString(activities[2,2])
df$Activity[ df$Activity == 3] = toString(activities[3,2])
df$Activity[ df$Activity == 4] = toString(activities[4,2])
df$Activity[ df$Activity == 5] = toString(activities[5,2])
df$Activity[ df$Activity == 6] = toString(activities[6,2])

gdf <- df %>% group_by(Activity,Subject) %>% summarize_each(funs(mean))
gdf$ID <- NULL
write.table(gdf,'result.txt',row.name=FALSE)

