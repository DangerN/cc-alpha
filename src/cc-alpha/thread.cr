module Alpha
  class Thread
    JSON.mapping(
      id: UInt64,
      flags: Array(String),
      post_limit: {type: UInt16, default: 350.to_u16},
      posts: Array(Post)
    )

    property id, flags, post_limit, posts

    # Creates a `Post` and adds it to this `Thread`'s post list.
    def add_post(post_json)
      @posts << Post.from_json(post_json)
    end
  end
end
