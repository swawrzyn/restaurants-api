Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [:index, :show]
    end
  end
end
