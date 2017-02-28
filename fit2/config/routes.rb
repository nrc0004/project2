Rails.application.routes.draw do
  devise_for :users
    root to: 'programs#intro'
    get '/' => 'programs#intro'
    get '/loggedin' => 'programs#homepage'

    resources :programs do
      resources :exercises
    end

end
