def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
    .select { |k,v|
      year_from <= v["finished"] &&
      year_to   >= v["finished"]
    }.each { |k,v|
        puts "#{v["title"].ljust(30)} #{v["finished"]}"
    }
end
print_plays(1600, 1605)

# Output
# As You Like It                 1600
# Hamlet                         1601
# Twelfth Night                  1601
# Troilus and Cressida           1602
# Sir Thomas More                1604
# Measure for Measure            1604
# Othello                        1604
# All's Well That Ends Well      1605


# True
