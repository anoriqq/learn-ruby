class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now
    @content = content[0..39]
    @mood    = mood
  end
end

Blurb.new.time

# Output
# 2020-04-13 15:57:22 +0900


# Noted
