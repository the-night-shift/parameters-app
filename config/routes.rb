Rails.application.routes.draw do
  get '/url-params' => 'pages#parameters_method'
  get '/number-game' => 'pages#guess_a_number'
end
