require('minitest/autorun')
require('minitest/rg')
require_relative('../PartB_SportsTeam.rb')

class TestSportsTeam  < MiniTest::Test

  def test_team_name
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    assert_equal("Greens", team.team_name)
  end

  def test_players
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    assert_equal(["Jonny","Sam","Charlie"], team.players)
  end

  def test_coach
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    assert_equal("Dr Hockey", team.coach)
  end

  def test_set_coach
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    team.coach = ("Dr Tennis")
    assert_equal("Dr Tennis", team.coach)
  end

  def test_add_new_player
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    team.add_new_player("Steph")
    assert_equal(["Jonny","Sam","Charlie","Steph"], team.players)
  end

  def test_find_player_by_name___returns_player
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    player = team.find_player_by_name("Sam")
    assert_equal("Sam", player)
  end

  def test_find_player_by_name___returns_nil
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    player = team.find_player_by_name("Ben")
    assert_nil(player)
  end

#**Below not quite working
  def test_add_points__win
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    team.add_points("win")
    assert_equal(1, team.points)
  end

  def test_add_points__loss
    team = SportsTeam.new("Greens", ["Jonny","Sam","Charlie"], "Dr Hockey", 0)
    team.add_points("lose")
    assert_equal(0, team.points)
  end

# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String). ////
# For each property in the class make a getter method that can return them.////
# Create a setter method to allow the coach's name to be updated.////
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.////
# Create a method that adds a new player to the players array.////
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.////
# Add a points property into your class that starts at 0.////
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

end
