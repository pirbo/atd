let read_valid = (
  Atdgen_codec_runtime.bool
)
let read_same_pair read__a = (
  Atdgen_codec_runtime.tuple2
    (
      read__a
    )
    (
      read__a
    )
)
let read_point = (
  Atdgen_codec_runtime.tuple4
    (
      Atdgen_codec_runtime.int
    )
    (
      Atdgen_codec_runtime.int
    )
    (
      Atdgen_codec_runtime.string
    )
    (
      Atdgen_codec_runtime.unit
    )
)
let read_param read__a = (
  Atdgen_codec_runtime.make (fun json ->
    (
      {
          data =
            Atdgen_codec_runtime.decode
            (
              read__a
              |> Atdgen_codec_runtime.field "data"
            ) json;
          nothing =
            Atdgen_codec_runtime.decode
            (
              Atdgen_codec_runtime.unit
              |> Atdgen_codec_runtime.field "nothing"
            ) json;
      }
    )
  )
)
let read_pair read__a read__b = (
  Atdgen_codec_runtime.make (fun json ->
    (
      {
          left =
            Atdgen_codec_runtime.decode
            (
              read__a
              |> Atdgen_codec_runtime.field "left"
            ) json;
          right =
            Atdgen_codec_runtime.decode
            (
              read__b
              |> Atdgen_codec_runtime.field "right"
            ) json;
      }
    )
  )
)
let read__1 read__a read__b = (
  Atdgen_codec_runtime.list (
    read_pair read__a read__a
  )
)
let read_pairs read__a = (
  read__1 read__a read__a
)
let read_label = (
  Atdgen_codec_runtime.string
)
let read_labeled = (
  Atdgen_codec_runtime.make (fun json ->
    (
      {
          flag =
            Atdgen_codec_runtime.decode
            (
              read_valid
              |> Atdgen_codec_runtime.field "flag"
            ) json;
          lb =
            Atdgen_codec_runtime.decode
            (
              read_label
              |> Atdgen_codec_runtime.field "lb"
            ) json;
          count =
            Atdgen_codec_runtime.decode
            (
              Atdgen_codec_runtime.int
              |> Atdgen_codec_runtime.field "count"
            ) json;
      }
    )
  )
)
let read__2 = (
  (
    Atdgen_codec_runtime.string
  ) |> (Atdgen_codec_runtime.map (fun s -> `Id s))
)
let read_id = (
  read__2
)
