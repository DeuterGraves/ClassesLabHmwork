class HockeyTeam

  attr_accessor :players, :coach, :points, :team
  attr_reader

  def initialize(team, coach, points)
    #@team is called the instance variable
    @team = team
    @players = []
    @coach = coach
    @points = points
  end

  def add_player(player_name)
    #@players << (player_name)
    @players.push(player_name)
  end

# adding an array to an array
  def add_many(new_players)
    #this function is being passed an array so loop!
    for player in new_players
      # @players << (player)
      add_player(player)
      ##OR  - issue with this method is if you change add players to ban someone for example it won't apply here
      #@players.concat(new_players)
end

# good idea for this type of method/fuciton - put a ? in the name i.e. has_players?
  def search_players(player_name)
    # for player in @players
      # if player == player_name
      #   return true
      # else
      #   return false
      # end
    # end
    # better way to write - had implicit true/false result
    return @players.include?(player)
  end

def win_points(num)
  @points += num
end

  # def team_name
  #   return @team
  # end
  #
  # def coach_name
  #   return @coach
  # end
  #
  # def points
  #   return @points
  # end
  #
  #
  # def players
  #   return @players
  # end



   # def player
   #   return @player
   # end
   #
   # def add_player(player)
   #   @players << player
   # end

end
