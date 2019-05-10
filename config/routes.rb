Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  get '/quizes' => 'quizzes#quiz'
# root :to => somewhere
end
