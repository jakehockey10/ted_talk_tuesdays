Rails.application.routes.draw do
  resources :ted_talks, only: [:create, :destroy]
  get 'ted_talks/choose'
end
