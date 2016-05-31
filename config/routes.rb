Rails.application.routes.draw do
  root 'pages#homepage'

  post 'submit_email' => 'pages#submit_email'
  get 'hibari' => 'pages#hibari'
  get 'home' => 'pages#homepage'


end
