Rails.application.routes.draw do
  get '/url-params' => 'pages#parameters_method'
  get '/number-game' => 'pages#guess_a_number'
  get '/segment_params_url/:city/:state' => 'pages#segment_params_method'
  get '/fun-game/:guess' => 'pages#guess_a_number'
end
