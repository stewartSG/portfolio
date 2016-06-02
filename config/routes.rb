Rails.application.routes.draw do
  root 'pages#homepage'

  post 'submit_email' => 'pages#submit_email'

  get 'home' => 'pages#homepage'

  get 'hibari' => 'pages#hibari'
  get 'addmein' => 'pages#addmein'
  get 'homedelights' => 'pages#homedelights'
  get 'mirawoong' => 'pages#mirawoong'
  get 'shopee' => 'pages#shopee'

end
