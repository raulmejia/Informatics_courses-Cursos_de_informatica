mi_funcion<-function(vector){
  error_standar<-mean(vector)/sd(vector)
  return(error_standar)
}
