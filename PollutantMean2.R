
pollutantmean <- function(directory, pollutant, id1= 1:332) {
  m<-min(id1)
  x<-max(id1)
  total<-do.call(rbind, 
                     lapply(list.files(path="C:/Users/benboat/Desktop/DS R/specdata"), 
                            read.csv, header=TRUE, sep=","))
  
          total2<-subset(total,ID <=x & ID >= m)
         
  Output<-mean(total2[,pollutant], na.rm = TRUE)
  Output

  # this is the good one is your list of data.frames mean(df[, pollutant], na.rm = TRUE)
}


