module Alpha
  class Board
    JSON.mapping(
      id: String,
      name: String,
      flags: Array(String),
      thread_limit: {type: UInt8, default: 25.to_u8},
      threads: Array(Thread)
    )

    # Creates a `Thread` and add it to `Board`'s thread list.
    def add_thread(thread_json)
      @threads << Post.from_json(thread_json)
    end
  end
end
