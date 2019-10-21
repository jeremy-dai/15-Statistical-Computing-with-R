rm(list=ls())


steden <- c("Groningen", "Leeuwarden", "Assen", "Zwolle", "Lelystad", "Arnhem", "Utrecht", "Haarlem", "Den Haag", "Middelburg", "'s-Hertogenbosch", "Maastricht")

length(steden)

sample.id.names <- c("subject", "ID", "sID", "persID", "subject_number", "sampleID")
leading.zeros <- c("", "0", "00", "0000")

ids <- paste(rep(sample.id.names, 2), steden, ": ", leading.zeros, sep="")
set.seed(28072017)
total.number.samples <- replicate(length(ids), 1:sample(1:100, 1))
sample.names <- character()
for (i in 1:length(ids)){
  sample.names <- c(sample.names, paste(ids[i], total.number.samples[[i]], sep=""))
}
N <- length(sample.names)

sex <- sample(c("male", "female"), N, replace=T)
hemoglobin <- numeric(N)
hemoglobin[sex=="male"] <- rnorm(N, mean=15.9, sd=1.05)[sex=="male"]
hemoglobin[sex=="female"] <- rnorm(N, mean=13.6, sd=0.75)[sex=="female"]
hemoglobin <- round(hemoglobin, digits=4)
iron <- numeric(N)
iron[sex=="male"] <- rnorm(N, 120.5, sd=27.75)[sex=="male"]
iron[sex=="female"] <- rnorm(N, 110, sd=30)[sex=="female"]
iron <- round(iron, digits=3)
creatine <- round(rnorm(N, mean=7, sd=2.5), digits=5)

sample_date <- as.Date(sample(-20:0, N, replace=T), origin="2017-05-12")
sample_date <- as.character(format.Date(sample_date, format="%d/%m/%Y"))
measurement_date <- as.Date(sample(1:20, N, replace=T), origin="2017-05-12")
measurement_date <- as.character(format.Date(measurement_date, format="%d/%m/%Y"))

age_years <- sample(18:33, N, replace=T)
age_months <- sample(0:11, N, replace=T)

difference_in_days <- numeric(N)
for (i in 1:N){
  difference_in_days[i] <- as.numeric(strsplit(measurement_date, split="/")[[i]][1]) - as.numeric(strsplit(sample_date, split="/")[[i]][1])
}

bloodsamples_data <- data.frame(bloodSampleID = sample.names, sex = sex, age_years=age_years, age_months = age_months, sample_date = sample_date, measurement_date=measurement_date, difference_in_days = difference_in_days, hg = hemoglobin, ir = iron, creat = creatine, stringsAsFactors = F)

cor(bloodsamples_data$hg, bloodsamples_data$ir)

n_missing <- 15
missing_coords <- matrix(c(sample((1:N)[which(bloodsamples_data$sex=="male")], n_missing), rep(9, n_missing)), ncol=2)
bloodsamples_data[missing_coords] <- 9999

missing_sex <- sample((1:N)[-missing_coords[, 1]], 10)
bloodsamples_data$sex[missing_sex] <- NA

# Write data
write.table(bloodsamples_data, "bloodsamples_data.txt", sep="&", row.names=F)

# Write assignment rdata file
bloodsamples_data_bad <- as.matrix(bloodsamples_data)
save(file="assignment_1.Rdata", list=c("bloodsamples_data_bad", "bloodsamples_data"))
