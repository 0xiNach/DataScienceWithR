is_magic <- function(mat){
  n = nrow(mat)
  r1 = apply(mat,1,sum)
  c1 = apply(mat,2,sum)
  return(sum(r1)==sum(c1) & sum(c1)==sum(diag(mat)*n) & sum(r1)==sum(diag(mat[n:1,])*n)) 
}
