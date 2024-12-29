Rails.application.routes.draw do
     devise_for :users
     root 'home#index'
     resources :posts
     get 'about', to: 'pages#about'

     # Custom error routes
     match "/404", to: "errors#not_found", via: :all
     match "/500", to: "errors#internal_server_error", via: :all
     match "/422", to: "errors#unprocessable_entity", via: :all
     match "/403", to: "errors#forbidden", via: :all
     match "/401", to: "errors#unauthorized", via: :all
     match "/400", to: "errors#bad_request", via: :all
     match "/503", to: "errors#service_unavailable", via: :all
     match "/504", to: "errors#gateway_timeout", via: :all
     match "/505", to: "errors#http_version_not_supported", via: :all
     match "/507", to: "errors#insufficient_storage", via: :all
     match "/508", to: "errors#loop_detected", via: :all
     match "/509", to: "errors#bandwidth_limit_exceeded", via: :all
     match "/510", to: "errors#not_extended", via: :all
     match "/511", to: "errors#network_authentication_required", via: :all
   end
