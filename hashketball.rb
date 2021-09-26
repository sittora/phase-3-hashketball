# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def all_players
  game_hash[:home][:players] + game_hash[:away][:players]
end



def num_points_scored(requested_player)
  all_players.each do |player|
    if player[:player_name] == requested_player
      return player[:points]
    end
  end
end


def shoe_size(requested_player)
  all_players.each do |player|
    if player[:player_name] == requested_player
      return player[:shoe]
    end
  end
end


def all_teams()
  [ game_hash[:home], game_hash[:away] ]
end



def team_colors(requested_team)
  all_teams.each do |team| 
    if team[:team_name] == requested_team
      return team[:colors]
    end
  end
end

def team_names
  team_list = []
  all_teams.each do |team| 
     team_list.push(team[:team_name])
  end 
    return team_list
end

def player_numbers(requested_team)
  number_list = []
  all_teams.each do |team|
    if team[:team_name] == requested_team
      team[:players].each do |player|
        number_list.push(player[:number])
    end
     return number_list
     end
 end
end

def player_stats(player_name)
  all_players.find do |player| 
    player[:player_name] == player_name 
  end
end

def big_shoe_player
  all_players.max_by do |player|
    player[:shoe]
  end
end

def big_shoe_rebounds
  big_shoe_player[:rebounds]
end

