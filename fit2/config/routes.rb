Rails.application.routes.draw do
    root to: 'programs#intro'
    get '/index' => 'programs#index'

    resources :programs do
      resources :exercises
        end
end
