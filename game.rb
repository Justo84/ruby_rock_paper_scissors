puts ''
puts ''
puts 'ROCK PAPER SCISSORS'
puts ''
puts ''
puts 'Your family has been kidnapped by the evil Computer.'
puts 'The only way to save them is to win two rounds of'
puts 'Rock Paper Scissors.  Are you a bad enough dude/dame'
puts 'to do it?'
puts ''
puts 'Enter "r" for Rock, "p" for paper, or "s" for scissors.'
puts ''

p_score = 0
c_score = 0

player = ''

while p_score != 2 || c_score != 2

# player = gets.chomp.downcase
input = 0

player = gets.chomp.downcase

while input == 0

if player == 'r'
  input = 1
  puts ''
  puts 'Rock'
elsif player == 'p'
  input = 2
  puts ''
  puts 'Paper'
elsif player == 's'
  input = 3
  puts ''
  'Scissors'
else
  input = 0
  puts ''
  puts 'This isn\'t a game!  You\'re family is in danger!'
  puts 'Plase input "r", "p" or "s".'
  puts ''
  player = gets.chomp.downcase
end
end

# needs a check here to catch non-r,p,s entries.

computer = rand(2) # 0 = rock, 1 = paper, 2 = scissors

 if player == 'r'
   if computer == 0
     puts 'Computer: Rock'
     puts 'TIE'
   end
   if computer == 1
     puts 'Computer: Paper'
     puts 'YOU LOSE'
     c_score = c_score + 1
   end
   if computer == 2
     puts 'Computer: Scissors'
     puts 'YOU WON'
     p_score = p_score + 1
   end
 end

 if player == 'p'
   if computer == 0
     puts 'Computer: Rock'
     puts 'YOU WON'
     p_score = p_score + 1
   end
   if computer == 1
     puts 'Computer: Paper'
     puts 'TIE'
   end
   if computer == 2
     puts 'Computer: Scissors'
     puts 'YOU LOSE'
     c_score = c_score + 1
   end
 end

 if player == 's'
   if computer == 0
     puts 'Computer: Rock'
     puts 'YOU LOSE'
     c_score = c_score + 1
   end
   if computer == 1
     puts 'Computer: Paper'
     puts 'YOU WON'
     p_score = p_score + 1
   end
   if computer == 2
     puts 'Computer: Scissors'
     puts 'TIE'
   end
 end

if p_score == 2
  puts ''
  puts 'You\'ve won!! Your family is safe!'
  puts ''
  puts 'Final Score: '
  puts 'You: ' + p_score.to_s
  puts 'Computer: ' + c_score.to_s
  break
elsif c_score == 2
  puts ''
  puts 'You\'ve lost!  Everyone has died...'
  puts ''
  puts 'Final Score: '
  puts 'You: ' + p_score.to_s
  puts 'Computer: ' + c_score.to_s
  break
end

puts ''
puts 'Current Score: '
puts 'Player: ' + p_score.to_s
puts 'Computer: ' + c_score.to_s
puts ''
puts 'Enter "r", "s", or "p"'
player = ''

end
