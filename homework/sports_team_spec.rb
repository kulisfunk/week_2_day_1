require("minitest/autorun")
require("minitest/rg")
require_relative("./sports_team")

class TestTeam < MiniTest::Test

# Add a setup to save code repeat
  # def setup()
  #   players = ["sporty", "ginger", "posh"]
  #   @team = ("numpties", players, "becks")
  # end



def test_get_team_name()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks",0)
  assert_equal("numpties", team.get_team_name())
end

def test_get_players_array()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  #can also return the array and put .length on get_players_array and assert against number of players
  assert_equal(["sporty", "ginger", "posh"], team.get_players_array())
end

def test_get_coach_name()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  assert_equal("becks", team.get_team_coach())
end

def test_change_coach_name()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  team.change_coach_name("giggsy")
  assert_equal("giggsy", team.get_team_coach())
end

def test_add_new_player()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  team.add_new_player("scary")
  assert_equal(["sporty", "ginger", "posh", "scary"], team.get_players_array())
end

def test_check_roster()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  assert_equal(true, team.check_roster("ginger"))
end

def test_points_for_results__win()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  assert_equal(3, team.points_for_result("win"))
end

def test_points_for_results__draw()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  assert_equal(1, team.points_for_result("draw"))
end

def test_points_for_results__lose()
  team = Team.new("numpties", ["sporty", "ginger", "posh"], "becks", 0)
  assert_equal(0, team.points_for_result("lose"))
end


end
