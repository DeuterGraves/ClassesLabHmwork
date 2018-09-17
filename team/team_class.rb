class HockeyTeam

  attr_accessor :players, :coach, :points, :team
  attr_reader

  def initialize(team, coach, points)
    @team = team
    @players = []
    @coach = coach
    @points = points
  end

  def add_player(player_name)
    #@players << (player_name)
    @players.push(player_name)
  end

  def search_players(player_name)
    for player in @players
      if player == player_name
        return true
      else
        return false
      end
    end
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
