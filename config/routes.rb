Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # use the constraints option to add a subdomain to the uri
  namespace :api, path: '' do # constraints: { subdomain: 'api' }
    namespace :v1 do
      resources :searches, only: [:index]
    end
  end
end
