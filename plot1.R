# Preparation of data
# Stage 1. Download dataset
install.packages("downloader")
getwd()
if(!file.exists("./ExData_Plotting1")){dir.create("./ExData_Plotting1")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="././ExData_Plotting1//exdata%2Fdata%2Fhousehold_power_consumption.zip")

# Stage 2. Unzip dataSet to "./ExData_Plotting1/" directory
unzip(zipfile="./ExData_Plotting1/exdata%2Fdata%2Fhousehold_power_consumption.zip",exdir="./ExData_Plotting1")
list.files("./ExData_Plotting1")

data <- read.table("./ExData_Plotting1/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("./ExData_Plotting1/plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()