Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

     root to: 'programs#splash'

     get '/homepage' => 'programs#homepage'
    resources :programs do
      resources :exercises
    end

    resources :users do
      resources :profiles
    end

end
