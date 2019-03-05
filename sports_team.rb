class Team
  attr_reader :team_name, :players, :points
  attr_accessor :coach
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player(name)
    @players.include?(name)
  end

  def outcome(result)
    @points += 3 if result == "win"
  end
end
