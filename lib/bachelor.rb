def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |data|
      if data["occupation"] == occupation
        return data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season, contestant|
    contestant.each do |data|
      if data["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |data|
      if data["hometown"] == hometown
       return data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
i = 0, r = 0
  data[season].each do |contestant|
    contestant.each do |data|
      i += data["age"].to_int
      r += 1
    end
  end
  i / r
end
