class RugbyTeam

  attr_accessor = :squad, :leaguepoints
  attr_reader = :name

  def initialize(input_name, input_squadsize, input_leaguepoints)
    @name = input_name
    @squad = input_squadsize
    @leaguepoints = input_leaguepoints
  end

    def play
      return "the #{@name} team played tonight"
    end

    def trained
      return "the #{@name} team trained tonight"

    end

    def recruit
      return " #{@name} team has added a player to their squad"
    end

    def update(leaguepoints)

    return " #{@name} team has added a player to their squad"
    end

end
