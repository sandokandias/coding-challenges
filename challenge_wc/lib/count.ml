let count_bytes filename =
  let res = File_effect.read filename in
  match res with Ok content -> Ok (String.length content) | Error s -> Error s
