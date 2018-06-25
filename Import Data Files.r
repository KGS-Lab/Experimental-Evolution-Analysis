read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_RAD_R1.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "RAD"
A$Replicate <- "Rep 1"
Counts<-A
read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_GdA_R1.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "GdA"
A$Replicate <- "Rep 1"
Counts<-rbind(Counts, A)
read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_GdA_R2.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "GdA"
A$Replicate <- "Rep 2"
Counts<-rbind(Counts, A)
read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_DMSO_R1.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "DMSO"
A$Replicate <- "Rep 1"
Counts<-rbind(Counts, A)
read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_DMSO_R2.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "DMSO"
A$Replicate <- "Rep 2"
Counts<-rbind(Counts, A)
read.table("/users/kerry/dropbox/pool_file_sum_all/Evol_14_M3_R1.txt", sep = ",", header = TRUE)->A
colnames(A)[2:length(colnames(A))]<-c(1,2,5,6,8,9,10,11,12,14)
A$Condition <- "M3"
A$Replicate <- "Rep 1"
Counts<-rbind(Counts, A)

head(Counts)
dim(Counts)

Raw_Data<-melt(Counts, id = c('Condition', 'Replicate', 'BARCODE'))
colnames(Raw_Data)[4:5]<-c("Timepoint", "Counts")

