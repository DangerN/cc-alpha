module Alpha
  class Post
    JSON.mapping(
      id: UInt64,
      badges: Array(String),
      flags: Array(String),
      text: {type: String, default: ""},
      media_name: {type: String, default: ""},
      name: {type: String, default: "Anonymous"},
      subject: {type: String, default: ""}
    )

    property id, badges, flags, text, media_name, name, subject
  end
end
