Rails.application.routes.draw do
  
  # Rake routes will show all the resource routes except the ones you don't want.
  # In this case, it will be a show route. 
  resources :portfolios, except: [:show]
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
# /about instead of /blogs/about/
#pages is the controller. about is the action.
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  

  resources :blogs
  
  # To go to the homepage automatically:  
  # Root of the application (homepage) below syntax
root to: 'pages#home'

end
