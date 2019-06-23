Rails.application.routes.draw do
  root 'exchanges#index'
  get 'convert', to: 'exchanges#convert'
  get 'bitcoin', to: 'exchanges#bitcoin'
end