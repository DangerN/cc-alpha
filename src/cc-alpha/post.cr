module Alpha
  class Post
    JSON.mapping(
      id: UInt64,
      badges: Array(String),
      flags: Array(String),
      text: {type: String, default: ""},
      media_link: {type: String, default: ""},
    )
  end
end
