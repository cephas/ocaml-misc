let square x =
  x *. x
;;

let compose f g =
  fun x -> f (g x)
;;

let rec power f n =
  if n = 0 then fun x -> x 
  else compose f (power f (n - 1))
;;

let derivative dx f =
  fun x -> (f (x +. dx) -. f x) /. dx
;;

let sample1 x =
  square x
;;

square 3.;;

(* 1st derivative = 2x *)
let d1 = (derivative 1e-6) square;;

d1 3.;;

(* 2nd derivative = 2 *)
let d2 = (power (derivative 1e-6) 2) square;;

d2 3.;;

(* 3rd derivative = 0 *)
let d3 = (power (derivative 1e-6) 3) square;;

d3 3.;;
