class SportsTeam

attr_reader(:team_name, :players)
attr_accessor(:coach,:points)

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

#Long hand 'getters':
 # def team_name()
 #   return @team_name
 # end
 #
 # def players()
 #   return @players
 # end
 #
 # def coach()
 #   return @coach
 # end

#Long hand 'setter':
 # def set_coach(coach_new)
 #   @coach = coach_new
 # end

   def add_new_player(new_player)
     players.push(new_player)
   end

   def find_player_by_name(player_name)
     for player in players
       if player == player_name
         return player
       end
     end
     return nil
   end

#**
   def add_points(team, win)
     if win == true
       points += 1
     end
     return points
   end

end
