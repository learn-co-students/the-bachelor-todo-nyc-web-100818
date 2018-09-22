require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] = "Winner"
      return contestant_hash["name"].split.first # want return here so we don't overwrite
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants_array|

    contestants_array.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0

  data.each do |season, contestants_array|

    contestants_array.each do |contestant_hash|
        if contestant_hash["hometown"] == hometown
          counter += 1
        end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.collect do |season, contestants_array|

    contestants_array.collect do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"] # return stops the iteration
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  age_int = 0
  num_of_contestants = 0

  data[season].each do |contestant_hash|
      age_int = contestant_hash["age"].to_i
      age_sum += age_int
      num_of_contestants += 1
  end

  (age_sum.to_f/num_of_contestants.to_f).round
end

# For reference:

# data.each do |season, contestants_array|
#   season = "season 19"
#   array = array of hashes that contain each contestants' data
#
#     contestants_array.each do |contestant_hash|
        # contestant_hash = {
        #    "name"=>"Ashley Iaconetti",
        #    "age"=>"26",
        #    "hometown"=>"Great Falls, Virginia",
        #    "occupation"=>"Nanny/Freelance Journalist",
        #    "status"=>""}

          # contestant_hash.each do |k, v|
          #   k = "name"
          #   v = "Ashley Iaconetti"
