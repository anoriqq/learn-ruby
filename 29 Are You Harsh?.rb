ratings = Hash.new {0}

books.values.each { |rate|
  ratings[rate] += 1
}

puts ratings

# Output
# {"splendid"=>1, "abysmal"=>1, "mediocre"=>2}


# Great, wow! You've made a scorecard of your ratings
