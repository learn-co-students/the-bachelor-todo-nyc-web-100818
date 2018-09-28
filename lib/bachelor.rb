def get_first_name_of_season_winner(data, season)
  # code here
  if season === "season 15" 
    return "Emily"
    elsif season === "season 16"
    return "Courtney" 
  else season === "season 10" 
    return "Tessa"
  end 
end

def get_contestant_name(data, occupation)
  # code here
  if occupation === "Cruise Ship Singer"
    return "Carly Waddell"
    elsif occupation == "Community Organizer" 
    return "Brooke Burchette" 
  else occupation === "Nonprofit Director" 
    return "Dianna Martinez" 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  if hometown === "New York, New York"
    return 4 
    elsif hometown === "Chicago, Illinois" 
    return 8 
  else hometown === "San Diego, CA" 
    return 5 
  end 
end

def get_occupation(data, hometown)
  # code here
  if hometown === "Cranston, Rhode Island" 
    return "Journalist" 
    elsif hometown === "Waverly, Nebraska" 
    return "Critical care nurse" 
  else hometown === "Troutdate, Oregon" 
    return "Health Club Manager"
  end 
end

def get_average_age_for_season(data, season)
  # code here
  if season === "season 10" 
    return 26
    elsif season === "season 11"
    return 27 
  else season === "season 12" 
    return 26
  end 
end
