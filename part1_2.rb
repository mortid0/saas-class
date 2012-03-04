class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def check_strategy my
	raise NoSuchStrategyError unless ((my.eql? "r") || (my.eql? "p") || (my.eql? "s"))
end

def winner_is a, b
	return 1 if ((a.eql? "r")&& (b.eql? "p") || (a.eql? "p")&& (b.eql? "s") || (a.eql? "s")&& (b.eql? "r"))
	0
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2
# your code here
	a = game[0][1].downcase
	b = game[1][1].downcase
	check_strategy a
	check_strategy b
	game[winner_is(a, b)]	
end


def rps_tournament_winner tournament
	if (tournament[0][1].class.eql?(String))
		return rps_game_winner(tournament)
	else
		a = rps_tournament_winner(tournament[0])
		b = rps_tournament_winner(tournament[1])
		return rps_game_winner([a, b])
	end
end

