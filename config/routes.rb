Rails.application.routes.draw do

  resources :categories
  resources :hairs
  devise_for :users, controllers: {sessions: 'devise/sessions'}

  #redirecting root route to users/sign_up
  root :to => redirect('/users/sign_in')

  get "trytheapp" => "notusers#tryTheApp"

  get "hairedit" => "hairs#edit"

  get 'comb1' => "combs#result1"

  get 'comb2' => "combs#result2"

  get 'comb3' => "combs#result3"


end
