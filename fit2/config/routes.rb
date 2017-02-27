Rails.application.routes.draw do
  devise_for :users
    root to: 'programs#intro'
    get '/index' => 'programs#index'

    resources :programs do
      resources :exercises
        end
end
