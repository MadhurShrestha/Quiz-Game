class Question
  attr_accessor :prompt, :answer

  def initialize(prompt,answer)
    @prompt = prompt
    @answer = answer
  end
end


p1 = " What is the name given to a donkey crossed with a zebra?\n(a)Zonkey\n(b)Donkra\n(c)Zeedonk\n(d)Mule"
p2 = "World War I began in which year?\n(a)1914\n(b)1910\n(c)1917\n(d)1919"
p3 = "Adolf Hitler was born in which country?\n(a)Haiti\n(b)Austria\n(c)Hungary\n(d)Germany"
p4 = "The ancient Egyptians used to sleep on pillows made of: \n(a)K and T\n(b)M and H\n(c)G and K\n(d)K and M"
p5 = "In “The Big Bang Theory”, what is the name of the song that was sung to Sheldon by his mother to comfort him when he was ill as a young boy?\n(a)Warm Kitty\n(b)Soft Kitty\n(c)Sleepy Kitty\n(d)Purr Purr"
p6 = "What is the middle name of Chandler Bing in the TV show 'Friends' ?\n(a)Francis\n(b)Muriel\n(c)Michael\n(d)Eustace"
p7 = "What is the main ingredient of Bombay Duck?\n(a)Duck \n(b)Duck Eggs \n(c)Fish \n(d)Goat"

questions = [
  Question.new(p1,"c"),
  Question.new(p2,"a"),
  Question.new(p3,"b"),
  Question.new(p4,"d"),
  Question.new(p5,"b"),
  Question.new(p6,"b"),
  Question.new(p7,"c")
]

def run_game(questions)
  answer = " "
  score = 0

  for quiz in questions
    puts quiz.prompt
    answer = gets.chomp()
    if answer == quiz.answer
      score += 1
    end
  end

if score < 5
  puts "You scored " +score.to_s + "/" + questions.length().to_s + "in this quiz.You can try harder next time.\nResult:Poor!!"
elsif score <  questions.length and score >= 5
  puts "You scored " +score.to_s + "/" + questions.length().to_s + "in this quiz.Aim higher.\nResult:Good!!"
else
  puts "You scored " +score.to_s + "/" + questions.length().to_s + "in this quiz.You are excellent.\nResult:Perfect!!"

end


end
run_game(questions)


