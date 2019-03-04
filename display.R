# code lifted from R Color Brewer. Modify as needed for consistent display of various Palettes. 

display.brewer.pal<-function(n,name){
   if(!(name %in% namelist)){
   stop(paste(name,"is not a valid palette name for brewer.pal\n"))
   }   
   if(n<3){ 
   warning("minimal value for n is 3, displaying requested palette with 3 different levels\n")
   return(display.brewer.pal(3,name))
   }
   if(n>maxcolors[which(name==namelist)]){
   warning(paste("n too large, allowed maximum for palette",name,"is",maxcolors[which(name==namelist)]),
        "\nDisplaying the palette you asked for with that many colors\n")
   return(display.brewer.pal(maxcolors[which(name==namelist)],name))
   }


   if(length(which(name==quallist))>0) palattr<-"(qualitative)"
   if(length(which(name==divlist))>0) palattr<-"(divergent)"
   if(length(which(name==seqlist))>0) palattr<-"(sequential)"
    image(1:n,1,as.matrix(1:n),col=brewer.pal(n,name),
       xlab=paste(name,palattr),ylab="",xaxt="n",yaxt="n",bty="n")

}
