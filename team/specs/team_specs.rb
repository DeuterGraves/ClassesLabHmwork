require('minitest/autorun')
require('minitest/rg')
require_relative('../team_class')

class TestHockeyTeam < MiniTest::Test

def test_return_team_name
team = HockeyTeam.new("Caps", "Todd Reirden", 0)
assert_equal("Caps", team.team)
end

def test_return_team_coach
team = HockeyTeam.new("Caps", "Todd Reirden", 0)
assert_equal("Todd Reirden", team.coach)
end

def test_return_team_points
team = HockeyTeam.new("Caps", "Todd Reirden", 0)
assert_equal(0, team.points)
end

def test_return_team_players
  team = HockeyTeam.new("Caps", "Todd Reirden", 0)
  assert_equal([], team.players)
end

def test_add_player_to_array
  team = HockeyTeam.new("Caps", "Todd Reirden", 0)
  team.add_player("Ovechkin")
  assert_equal(["Ovechkin"], team.players)
end

def test_add_player_to_array
  team = HockeyTeam.new("Caps", "Todd Reirden", 0)
  #new_player = "Ovechkin" <- you can avoid reusing the string by just storing it in a variable in the test. 
  team.add_player("Ovechkin")
  team.search_players("Ovechkin")
  assert_equal(true, team.search_players("Ovechkin"))
  # assert_equal(true, team.players().include?("Ovechkin"))
  # if asserting true you don't need to include _equal
  # assert(team.players().include?(new_player))
end

def test_team_points
  team = HockeyTeam.new("Caps", "Todd Reirden", 0)
  team.win_points(2)
  assert_equal(2, team.points)
end

def test_add_multiple_player()
  @team.add_many(["Craig Morton", "Nyalls Hemingway"])
  expected = ["Craig Morton", "Nyalls Hemingway"]
  assert_equal(expect, @team.players)
end


end
