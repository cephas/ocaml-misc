let rec fib p t1 t2 n =
  if n > 1 then p t1;
  if n < 3 then t2 else fib p t2 (t1+t2) (n-1)
;;

let tail_recursive_algorithm verbose x =
  let p i =
    if verbose then
      begin
        print_int i;
        print_string " ";
      end;
  in
  print_int (fib p 1 1 x);
  print_newline ()
;;

let main () =
  let arg = int_of_string Sys.argv.(1) in
  let verbose = (Array.length Sys.argv) > 2 && Sys.argv.(2) = "--verbose" in
  tail_recursive_algorithm verbose arg;
  exit 0
;;

main ()
;;
