Rails.application.routes.draw do
<<<<<<< HEAD
  
  devise_for :users
=======

  devise_for :users, controllers: {sessions: 'users/sessions'}
>>>>>>> a63900fd611b0f8f285bfa7df235aa99176e9509

end
