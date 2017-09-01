Rails.application.routes.draw do
  root to: 'static_pages#home'

  get 'home', to: 'static_pages#home'
  
  get 'about-us', to: 'static_pages#about_us'

  get 'contact-us', to: 'static_pages#contact_us'

  get 'how-it-works', to: 'static_pages#works'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
