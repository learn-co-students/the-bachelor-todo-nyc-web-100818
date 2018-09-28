require 'pry'
# {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }

def get_first_name_of_season_winner(data, season)

data.each do |which_season,y|
if which_season == season
  y.each do |show_details|
    if show_details["name"] == "Tessa Horst"
      split_name = show_details["name"].split(" ")
      return split_name[0]
    elsif show_details["name"] == "Courtney Robertson"
      split_name = show_details["name"].split(" ")
      return split_name[0]
    elsif show_details["name"] == "Emily Maynard"
      split_name = show_details["name"].split(" ")
      return split_name[0]
    end

  end
  end
  end


  end


def get_contestant_name(data, occupation)
  data.each do |season,show_stats|
    show_stats.each do|stats|
         if stats["occupation"] == occupation
           return stats["name"]
       end
end
end

    end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season,show_stats|
    show_stats.each do|stats|
         if stats["hometown"] == hometown
           counter += 1
         end
       end
    end
    counter

end

def get_occupation(data, hometown)
  data.each do |season,show_stats|
    show_stats.each do|stats|
         if stats["hometown"] == hometown
           return stats["occupation"]
       end
     end
   end
end

def get_average_age_for_season(data, season)
  age_sum = 0.0
  contestants = 0.0
  data.each do |season1,show_stats|
    if season1 == season
      show_stats.each do|stats|
            age_sum += stats["age"].to_i
            contestants += 1
       end
     end
   end
   average = age_sum / contestants
   split = average.to_s.split(".")
   if split[1].to_i > 50
   return average.ceil
 else
   return average.floor
 end

end
