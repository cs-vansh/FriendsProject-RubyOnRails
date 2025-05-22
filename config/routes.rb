Rails.application.routes.draw do
  devise_for :users
  resources :friends
  # get "home/index"  #will work on localhost:3000/home/index

  # This sets the **root URL ("/")** of your application to point to the `index` action inside the `HomeController`.
  # So when someone visits `localhost:3000/`, Rails will look for the method `def index` in `app/controllers/home_controller.rb`
  # and render the corresponding view file `app/views/home/index.html.erb`.
  # root "home#index"  # Will work on localhost:3000/

  root "friends#index"  # Will work on localhost:3000/

  # This defines a custom GET route for the URL `/home/about`.
  # When a user visits `localhost:3000/home/about`, Rails will look for the method `def about` in `HomeController`,
  # and render the view `app/views/home/about.html.erb` (if it exists).
  get "home/about"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
