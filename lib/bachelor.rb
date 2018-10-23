def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

# Build a method, `get_first_name_of_season_winner`, that takes in two arguments, a hash called `data`
# (i.e. the data structure described above), and a season.
#The method should return the *first name* of that season's winner.
# **Hint**: you'll need to do some string manipulation to return only the first name of the winning lady.
#  * Think about how you will iterate through the hash to get to the level that contains a contestant's status.
#  * How will you check to see if a contestant's status equals "Winner"?


#Build a method, `get_contestant_name`, that takes in the data hash and an occupation string
#and returns the name of the woman who has that occupation.
#data > season, season > contestants,
def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

#takes two arguments––data hash,string of a hometown.
#return a counter of the number of contestants who are from that hometown.
def count_contestants_by_hometown(data, hometown)
  counter = 0
  current_count = []
  data.each do |season, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

#two arguments––the data hash and a string of a hometown.
#returns the occupation of the first contestant who hails from that hometown.
def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown
        return contestants_hash["occupation"]
      end
    end
  end
end

#two arguments––the data hash and a string of a season.
#return the average age of all of the contestants for that season.
  #* How will you iterate down into the level of the hash that contains each contestant's age?
  #* How will you collect the ages of each contestant and average them?
      #Remember that the values of the "age" keys are not numbers,strings. convert strings to numbers
  #* Remember that dividing *integers* in Ruby always rounds down.
      #In this case though, we want the normal math sort of rounding (where .5 and higher rounds *up*), instead.
      #Consider the difference between `to_f` and `to_i`.
def get_average_age_for_season(data, season)
  age_total = 0
  num_of_contestants = 0

  data[season].each do |contestants_hash|
      age_total += contestants_hash["age"].to_i
      num_of_contestants += 1
  end
  (age_total / num_of_contestants.to_f).round(0)
end
