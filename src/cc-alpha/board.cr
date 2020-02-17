module Alpha
  class Board
    JSON.mapping(
      id: String,
      name: String,
      flags: Array(String),
      thread_limit: {type: UInt8, default: 25.to_u8},
      threads: Hash(String, Thread)
    )

    # Creates a `Thread` and add it to `Board`'s thread list.
    def add_thread(thread_json)
      new_thread = Thread.from_json(thread_json)
      @threads[new_thread.id.to_s] = new_thread
    end
  end
end
