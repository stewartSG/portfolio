Rails.application.routes.draw do
  root 'pages#homepage'

  post 'submit_email' => 'pages#submit_email'

  get 'home' => 'pages#homepage'

  get 'hibari' => 'pages#hibari' 
  get 'homedelights' => 'pages#homedelights'
  get 'mirawoong' => 'pages#mirawoong'

end
