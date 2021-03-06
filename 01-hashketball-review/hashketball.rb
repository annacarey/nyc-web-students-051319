require 'pry'

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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# return all of the players for the game hash
def players
  game_hash[:home][:players] + game_hash[:away][:players]
end

def find_player(player_name)
  players.find do |player|
    player[:player_name] == player_name
  end
end

# binding.pry


# takes a player name, returns the points attribute for the matching player
def num_points_scored(player_name)
  find_player(player_name)[:points]
end



# takes a player name, returns the shoe attribute for the matching player
def shoe_size(player_name)
  find_player(player_name)[:shoe]
end


puts shoe_size("Bismak Biyombo")

# EXERCISE:
# Define a method called get_names that takes an array of instructors
# and returns just their names.
instructors = [
  {name: 'Charlie', hometown: 'Charlesworthston, CH', age: 57},
  {name: 'Evans', hometown: 'Queens, NY', age: 3 },
  {name: 'Avi', hometown: 'Bronx, NY', age: 92},
  {name: 'Rishi', hometown: 'North Brunswick, NJ', age: 20}
]

# return an array of names
def get_names(instructors)
  instructors.map do |instructor|
    instructor[:name]
  end
end


def get_hometowns(instructors)
  instructors.map do |instructor|
    instructor[:hometown]
  end
end

def who_can_legally_drink(instructors)
  instructors.select do |instructor|
    instructor[:age] >= 21
  end
end

binding.pry

# EXERCISE
# What do the following return?

arr = (1..100).to_a

arr.map do |num|
  num.even?
end

arr.select do |num|
  7
end
