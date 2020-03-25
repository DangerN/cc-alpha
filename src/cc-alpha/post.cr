module Alpha
  class Post
    JSON.mapping(
      id: UInt64,
      badges: Array(String),
      flags: Array(String),
      text: {type: String, default: ""},
      media_name: {type: String, default: ""},
      name: {type: String, default: "Anonymous"},
      subject: {type: String, default: ""},
      time_stamp: Time
    )

    property id, badges, flags, text, media_name, name, subject

    def initialize(id, name, subject, text, media_name, badges, flags, time_stamp)
      @id = id
      @name = name
      @subject = subject
      @text = text
      @media_name = media_name
      @badges = badges
      @flags = flags
      @time_stamp = time_stamp
    end
  end
end
