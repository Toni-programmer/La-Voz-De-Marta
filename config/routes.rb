Rails.application.routes.draw do
  resources :testimonials
  resources :posts
  root "pages#home"
resources :patient_notes
  resources :appointments
  resources :patients
  resources :services
  resources :therapists
  get "up" => "rails/health#show", as: :rails_health_check
end
