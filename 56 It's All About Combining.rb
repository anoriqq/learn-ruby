class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now
    @content = [0..39]
    @mood    = mood
  end

  def moodify
    if @mood == :sad
      return ":-("
    elsif @mood == :happy
      return ":-)"
    # Add other moods here
    end

    # The default mood
    ":-|"
  end
end

class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = []
  end

  def add_a_blurb(mod, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
      }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

myapp.show_timeline

# Output
# Blurbalizer: The Big Blurb has 6 Blurbs
# I am never going back to that mountain.  Mon Apr 13 2020 18:43:25 GMT+0900 (日本標準時)
# I Left my Hoodie on the Mountain!        Mon Apr 13 2020 18:42:12 GMT+0900 (日本標準時)
# It was stolen by a giraffe !!            Mon Apr 13 2020 18:40:59 GMT+0900 (日本標準時)
# I am speechless!                         Mon Apr 13 2020 18:39:46 GMT+0900 (日本標準時)
# I can not believe Mt. Hood was stolen!   Mon Apr 13 2020 18:38:33 GMT+0900 (日本標準時)
# Today Mount Hood Was Stolen!             Mon Apr 13 2020 18:37:20 GMT+0900 (日本標準時)


