Rails.application.routes.draw do

  resources :hairs
  devise_for :users, controllers: {sessions: 'devise/sessions'}

  #redirecting root route to users/sign_up
  root :to => redirect('/users/sign_in')

  get "trytheapp" => "notusers#tryTheApp"

  get "hairedit" => "hairs#edit"

end
