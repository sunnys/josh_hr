Rails.application.routes.draw do
  resources :units
  resources :homes
  resources :personel_details do
    member do
      get '/edit_more_details' => 'personel_details#edit_more_details'
      post '/update_more_details' => 'personel_details#update_more_details'
    end
  end
  resources :profiles, only: [:index, :show] do
    member do
      get '/embodiment_report' => 'profiles#embodiment_report'
      get '/embodiment_report_pdf' => 'profiles#embodiment_report', as: :embodiment_pdf_report
    end
  end
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/landing' => 'homes#landing_page'
  get '/directorate' => 'homes#directorate'
  get '/policies' => 'homes#policies'
  get '/faq' => 'homes#faq'
  get '/galary' => 'homes#galary'
  get '/news' => 'homes#news'
  get '/on_leave_index' => "homes#on_leave_index"
  get '/on_field_index' => "homes#on_field_index"
  get '/on_field_index' => "homes#on_field_index"
  get '/investments_index' => "homes#investments_index"
  get '/achievements_index' => "homes#achievements_index"

  get '/dashboard' => "homes#index"
  root to: "homes#landing_page"
  
end
