require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, attributes|
   if season == season_num
  attributes.each do |key|
  if key["status"] == "Winner"
    return key["name"].split(" ")[0]
      end
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |season, attributes|
    attributes.each do |key|
      if occupation == key["occupation"]
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, attributes|
    attributes.each do |key|
      if hometown == key["hometown"]
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season, attributes|
    attributes.each do |keys|
  #binding.pry
      if hometown == keys["hometown"]
        return keys["occupation"]
      end
    end
end
end

def get_average_age_for_season(data, season)
  contestants = 0
  average_age = 0
  data.each do |seasons, attributes|
    if season == seasons
    attributes.collect do |keys|
      average_age += keys["age"].to_i
      contestants += 1
  #binding.pry
    end
  end
end
average = (average_age / contestants.to_f).round(0)
end
  #binding.pry
