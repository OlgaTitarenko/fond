Rails.application.routes.draw do
 
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home", as: :home
  get 'help', to: "help#main"
  resources :members
end
