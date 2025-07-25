Rails.application.routes.draw do
  # Now  i want that except for show action for rest of all portfolios (plural) actions is accepted but for show action only one portfolio (singular) is accepted for this ->

  resources :portfolios, except: [ :show ]

  get "portfolio/:id", to: "portfolios#show", as: :'portfolio_show'


  # get "pages/about"
  # get "pages/contact"

  get "about-me", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :blogs

  root to: "pages#home"
end
