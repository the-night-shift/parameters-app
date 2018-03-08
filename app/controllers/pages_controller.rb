class PagesController < ApplicationController
  def parameters_method
    # get the data
    message = params["name"].upcase
    if message[0] == "A"
      message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: message}
  end

  def guess_a_number
    # make an answer
    answer = 36
    # user guesses
    user_guess = params["guess"].to_i
    # i compare that guess to the answer
    # p "*" * 50
    # p 'answer'
    # p answer.class
    # p 'user_guess'
    # p user_guess.class
    # p "*" * 50
    if answer == user_guess
      the_message = "yay"
    elsif answer > user_guess
      the_message = "you guessed too low, you should guess higher"
    elsif answer < user_guess
      the_message = "you guessed too high, you should guess lower"
    end
    # if they get it right, tell them 'yay' if they get it wrong tell them they suck
    render json: {message: the_message}
  end

end
