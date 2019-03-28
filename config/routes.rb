Rails.application.routes.draw do
  resources :units
  resources :homes
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing' => 'homes#landing_page'
  get '/directorate' => 'homes#directorate'
  get '/on_leave_index' => "homes#on_leave_index"
  get '/on_field_index' => "homes#on_field_index"
  get '/on_field_index' => "homes#on_field_index"
  get '/investments_index' => "homes#investments_index"
  get '/achievements_index' => "homes#achievements_index"
  root to: "homes#index"
  
end
