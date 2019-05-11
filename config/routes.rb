Rails.application.routes.draw do
  get '/quizzes' => 'quizzes#quiz'

   scope '/quizzes' do
    resources :quizzes
    post 'user_token' => 'user_token#create'
  end

# root :to => somewhere
end
