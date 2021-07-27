setwd("D:/drive/aplicaciones_EDyM/images")
# setwd("~/Josué/tmp_ulab3/aplicaciones_EDyM/images")

eps2png <- function(file){
  # -dNOPAUSE -dQUIET -dBATCH
  command <- paste("gswin64c -dNOPAUSE -dQUIET -dBATCH -sDevice=png16m -dEPSCrop -r600x600 -sDEVICE=pngalpha -o ", file, ".png ", file, ".pdf", sep="")
  # command <- paste("gswin64c -dBATCH -dSAFER -dNOPAUSE -sDEVICE=svg ", file, ".pdf -o ", file, ".svg", sep="")
  system(command)
}

# Definición de carpeta de trabajo
# DIR <- "./images/02.2/"
DIR <- "./"


element_folder <- list.files(DIR, pattern =".pdf")
n <- length(element_folder)

# Remove all png files
for (i in 1:n){
  name <- strsplit(element_folder[i], "\\.")[[1]][1]
  name <- paste(name, ".svg", sep = "")
  
  if (file.exists(paste(DIR, name, sep = ""))){
    file.remove(paste(DIR, name, sep = ""))
  }
}

# Convert eps to png
for (i in 1:n){
  print(paste("Convirtiendo elemento", i))
  name <- strsplit(element_folder[i], "\\.")[[1]][1]
  eps2png(paste(DIR, name, sep=""))
}

# usethis::edit_rstudio_snippets()

