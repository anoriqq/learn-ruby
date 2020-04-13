def count_plays(year)
  s = get_shakey

  s["William Shakespeare"]
    .select { |k,v|
      v["finished"] == year
    }.each { |key, val|
      puts val["title"]
    }.count
end

puts count_plays(1591)

# Output
# The Two Gentlemen of Verona
# The Taming of the Shrew
# Henry VI, Part 2
# Henry VI, Part 3
# 4


# Yes, Shakespeare wrote 4 plays in 1591
