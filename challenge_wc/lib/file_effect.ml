let read filename =
  let ic = open_in filename in
  try
    let content = really_input_string ic (in_channel_length ic) in
    close_in ic;
    Ok content
  with Failure s -> Error s
