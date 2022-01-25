#!/usr/bin/env ruby
def guesser
  def init
    answer = rand(1..100)
    ask
    guess = until_within_range(gets.to_i)
    counter = 1
    [guess, answer, counter]
  end

  def range?(user_guess)
    (0 < user_guess) && (user_guess <= 100)
  end

  def judge(user_guess, actual_answer)
    if (user_guess > actual_answer) 
      puts('Too large')
      return 1
    elsif (user_guess < actual_answer)
      puts('Too small')
      return -1
    else
      return 0
    end
  end

  def ask
    puts "Enter a number in range 0 - 100"
  end

  def out_of_range
    $stderr.puts "ERROR: Guess out of range (0 - 100). Try again: "
  end

  # Yeah, recursion is not a great idea in languages like Ruby, but...
  # since the recursion depth here is not expected to be high it should be fine
  def until_within_range(guess)
    if not range?(guess)
      out_of_range
      until_within_range(gets.to_i)
    else
      return guess
    end
  end

  (guess, answer, counter) = init
  puts guess, answer, counter

  while (judge(guess, answer) != 0)
    ask
    guess = until_within_range(gets.to_i)
    counter += 1
  end

  puts "judge! Wooohooo! You guessed in #{counter} tries."
end

guesser