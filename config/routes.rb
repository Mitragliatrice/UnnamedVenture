Rails.application.routes.draw do
  resources :estimates
  resources :appointments

  get 'home', to: 'static_pages#home'
  get 'about-us', to: 'static_pages#about_us'
  get 'contact-us', to: 'static_pages#contact_us'
  get 'how-it-works', to: 'static_pages#works'

  root to: 'static_pages#home'
end
