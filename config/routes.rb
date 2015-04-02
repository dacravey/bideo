Rails.application.routes.draw do
  root to: "contacts#index"

  resources :contacts
  resources :messages, :only => [:index, :new, :create, :show]
end
