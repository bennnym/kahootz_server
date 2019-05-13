Rails.application.routes.draw do
  get 'games/show'
  get '/quizzes' => 'quizzes#quiz'
  get '/games/:id' => 'games#show'

  post '/new_game' => 'games#new_game_code'
  get '/new_game' => 'games#game_details'

  post '/users/create' => 'users#create'

   scope '/quizzes' do
    resources :quizzes
    post 'user_token' => 'user_token#create'
  end



# root :to => somewhere
end
