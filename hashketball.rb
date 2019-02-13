require 'pry'

def game_hash
  teams = 
    {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players =>  {
    "Alan Anderson" => { 
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
   }, "Reggie Evans" => {
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
   }, "Brook Lopez" => {
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
   }, "Mason Plumlee" => {
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
   }, "Jason Terry" => {
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
    }
  }
 },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Purple", "Turquoise"],
      :players => {
        "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      }, "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
      }, "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      }, "Ben Gordon" => {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      }, "Brendan Haywood" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
}
end 

# def good_practices
#   game_hash.each do |location, team_data|
#       team_data.each do |attribute, data|
# binding.pry 
#         data.each do |data_item|

#       end
#     end
#   end
# end



def num_points_scored(name)
  game_hash.each do |place, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
         data.each do |key,value|
          if key == name 
            return value[:points]
          end 
        end 
      end 
    end 
  end 
end 

def shoe_size(name)
  game_hash.each do |place, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |key, value|
          if key == name 
            return value[:shoe]
          end 
        end
      end 
    end 
  end 
end 

def team_colors(t_color)
  game_hash.each do |place, team_data|
    team_data.each do |key, value|
      if key == :colors
        if t_color == team_data[:team_name]
         return value
        end 
      end 
    end 
  end 
end 

  def team_names
    new_array = []
    game_hash.each do |place, team_data|
      team_data.each do |key, value|
        if key == :team_name
            new_array << value
        end 
      end 
    end 
    new_array 
  end 

def player_numbers(team)
  team_array = []
  game_hash.each do |place, team_data|
    team_data.each do |attribute, data|
      if data == team
        team_data.each do |key, value|
          if key == :players
            value.each do | k, v |
              team_array << v[:number]
            end 
          end 
        end  
      end 
    end 
  end 
  team_array
end 

def player_stats(name)
  answer = nil 
  game_hash.each do |place, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |key, value|
          if key == name
            answer = value
          end 
         end
      end 
    end 
  end 
  answer
end 

def big_shoe_rebounds
  answer = nil 
  biggest_shoe = nil
  game_hash.each do |place, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |key, value|
          if biggest_shoe == nil || biggest_shoe < value[:shoe]
            biggest_shoe = value[:shoe] 
            answer = key  
          end 
        end 
      end 
    end 
  end 
  answer
  biggest_shoe  
  binding.pry
end 







