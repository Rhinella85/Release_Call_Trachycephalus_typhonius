
########################################################################## 
#    Automatic generation of spectrogram - oscillogram composites        # 
#    This script takes one ".wav" file in a folder of choice             # 
#    and produce a "<file name>.png" image including the spectrogram     #
#    and oscillogram with the selected settings.                         # 
#    Standard settings are provided but can be modified at will          # 
##########################################################################

#1. Activate the packages:
install.packages("seewave")
install.packages("tuneR")
library(seewave) 
library(tuneR) 

#2. Import your sound file into a new R object using tuneR package (a choice menu will be displayed). 
infile <- file.choose() 
sound<-readWave(infile)

#Plot oscillogram and spectrogram in two panels together and export figure 
png(filename=paste(as.character(infile),"FILENAME", "png", sep = "."), 
    width= 1200, height=1000, res=200) 
spectro(sound, flim=c(0,6), wl=512, ovlp=90, osc=T, heights=c(2,2)) 
dev.off() 


##########################################################################


