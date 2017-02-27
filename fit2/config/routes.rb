Rails.application.routes.draw do
    root to: 'program#index'
    resources :programs do
      resources :exercises
        end
end
