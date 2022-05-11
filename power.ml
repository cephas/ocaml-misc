let rec power_alg t x n =
  if n = 0 then t
  else power_alg (t*x) x (n-1)
;;

let power x n =
  if n >= 0
  then power_alg 1 x n
  else 0;
;;
