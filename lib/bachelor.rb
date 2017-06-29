def get_first_name_of_season_winner(data, season)
  name = "blank"
  data.each do |year, array|
    if year == season
     array.each do |elements|
       name = elements["name"] if elements["status"] == "Winner"
       end
    end
  end
  name.split.first
end

def get_contestant_name(data, occupation)
  data.each do |year, array|
     array.each do |elements|
       return elements["name"] if elements["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |year, array|
     array.each do |elements|
       counter += 1 if elements["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |year, array|
    array.each do |elements|
      return elements["occupation"] if elements["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |year, array|
    if year == season
      array.each do |elements|
        ages.push(elements["age"].to_f)
      end
    end
  end
  total = 0
  ages.each {|x| total += x }
  return (total/ages.size).round
end
