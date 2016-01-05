fil1 <- readline("Prefix: ")
fil3 <- readline("Suffix: ")
sti <- readline("Sti til filene: ")
telle <- as.integer(readline("Begynn å telle fra: "))

filer <- list.files(path = paste0(sti,"."))
ant <- length(filer)
telleslutt <- telle + ant - 1

for (i in telle:telleslutt) {
  nr <- i + ant - telleslutt
  filgml <- filer[nr]
  filnr <- nr
  filnr <- ifelse(filnr < 10, paste0("0", filnr), filnr) #Virker for opptil 99 filer
  filny <- paste0(fil1,filnr,fil3)
  file.rename(paste0(sti,filgml), paste0(sti,filny))
}