open OUnit2
open Wc.Count

let filename =
  "/home/sandokan/Github/sandokandias/coding-challenges-ocaml/challenge_wc/pg132.txt"

let tests =
  "test suite for count bytes"
  >::: [
         ( "341836" >:: fun _ ->
           assert_equal 341836
             (let res = count_bytes filename in
              match res with Ok length -> length | Error _ -> -1) );
       ]

let _ = run_test_tt_main tests
