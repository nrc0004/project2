Rails.application.routes.draw do
  devise_for :users
    root to: 'programs#intro'
    get '/' => 'programs#intro'

    resources :programs do
      resources :exercises
        end

end
