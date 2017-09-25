class Team
  def initialize(team_name, players_array, team_coach, points)
    @team = team_name
    @players = players_array
    @coach = team_coach
    @points = points



  end

  def get_team_name()
    return @team
  end

  def get_players_array()
    return @players
  end

  def get_team_coach()
    return @coach
  end

  def change_coach_name(new_name)
    @coach = new_name
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_roster(player)
    return @players.include?(player)
  end

  def points_for_result(result)

    if result == "win"
      return @points += 3
      elsif result == "draw"
      return @points += 1
      end
      return @points
  end





end
