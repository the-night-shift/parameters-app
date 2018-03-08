Rails.application.routes.draw do
  get '/url-params' => 'pages#parameters_method'
end
