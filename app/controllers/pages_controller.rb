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

  def segment_params_method
    the_city = params["city"]
    the_state = params["state"]
    render json: {search_city: the_city, search_state: the_state}
  end
end
