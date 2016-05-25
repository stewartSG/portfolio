Rails.application.routes.draw do
  root 'pages#homepage'
  post 'submit_email' => 'pages#submit_email'
end
