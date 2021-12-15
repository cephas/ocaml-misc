let rec gcd a b =
  if b = 0 then a
  else gcd b (a mod b)
;;

let euclidean_algorithm a b =
  let x = gcd a b in
  Printf.printf "gcd = %d\n" x;
  Printf.printf "reduced fraction = %d / %d\n" (a/x) (b/x)
;;

let main () =
  let a = int_of_string Sys.argv.(1) in
  let b = int_of_string Sys.argv.(2) in
  euclidean_algorithm a b;
  exit 0
;;

main ()
;;
