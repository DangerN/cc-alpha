module Alpha
  class Board
    JSON.mapping(
      id: String,
      name: String,
      flags: Array(String),
      thread_limit: {type: UInt8, default: 25.to_u8},
      threads: Array(Thread)
    )
  end
end
