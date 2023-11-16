u='https://raw.githubusercontent.com/DavidQuigley/biostatistics/master/data/metabric.txt';
curtis=read.table(u, header=TRUE, stringsAsFactors=FALSE);
age = curtis$age;
subtype = curtis$er

hist(age)

#question 1 
#a)continous
#b) 65 
#c) no, later onset disease affecting age 

#question 2
#a) mean = 61.098, median =61.81

sd(age)
mean(age)
median(age)

boxplot(age~subtype)

#question 3 
#a) circles are outliers, box reps the median and then the interquartile range
#b) yes??
#c) negative has earlier onset 
#d) no 


table(subtype) 
neg<- 456
pos<- 1523
(pos)/((pos)+(neg))*100 

#question 4 
#76.95% 

url='https://raw.githubusercontent.com/DavidQuigley/biostatistics/master/data/data_covariates.txt';
ds_covar=read.table(url, header=TRUE, stringsAsFactors=FALSE);
assay = ds_covar$bp;
year = ds_covar$year;
sex = ds_covar$sex

hist(assay, freq = FALSE)
#question 5 
# not symmetrical 

boxplot(assay~sex)
#question 6
# no????
boxplot(assay~year)
#question 7 
#yes 


boxplot(assay~sex:year)

table(sex,year)


