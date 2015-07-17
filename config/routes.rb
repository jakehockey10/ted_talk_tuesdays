Rails.application.routes.draw do
  root 'ted_talks#choose'
  resources :ted_talks, only: [:create, :destroy]
  # get 'ted_talks/choose'
end
