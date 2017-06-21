Rails.application.routes.draw do
  resources :portfolios
  
# /about instead of /blogs/about/
#pages is the controller. about is the action.
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :blogs
  
  # To go to the homepage automatically:  
  # Root of the application (homepage) below syntax
root to: 'pages#home'

end
