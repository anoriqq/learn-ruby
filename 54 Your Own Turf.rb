class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = [] # A fresh clean array
    	    	 # for storing Blurbs
  end

  def add_a_blurb(mood, content)
    # The << means add to the end of the array
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"\

    @blurbs.sort_by { |t|
      t.time
    }.reberse.each { |t|
        puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

myapp = Blurbalizer.new "The Big Blurb"

# Output
# #<Blurbalizer:0x2f834>


# My app created
