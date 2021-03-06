module Alpha
  class Board
    JSON.mapping(
      id: String,
      name: String,
      flags: Array(String),
      thread_limit: {type: UInt8, default: 25.to_u8},
      threads: Hash(String, Thread),
    )

    property id, name, flags, thread_limit, threads

    def initialize(id, name, **args)
      @id = id
      @name = name
      @flags = args[:flags]? || [] of String
      @threads = {} of String => Thread
      @thread_limit = args[:thread_limit]? || 25.to_u8
    end

    # Creates a `Thread` and add it to `Board`'s thread list.
    def add_thread(thread_json)
      new_thread = Thread.from_json(thread_json)
      @threads[new_thread.id.to_s] = new_thread
    end
  end
end
