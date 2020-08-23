Rails.application.routes.draw do
  # , except:[:destroy] , only: [:index,]
  devise_for :users, only: [ :registrations,
                             :sessions,
                             :passwords,
                             :unlocks,
                             :confirmation,
                             :omniauth
                            ], 
          controllers: {registrations: 'users/registrations',
                        sessions: 'users/sessions',
                        passwords: 'users/passwords',
                        unlocks: 'users/unlocks',
                        confirmation: 'users/confirmation'
                      }
  
  root "static_pages#home"

  resources :roles, path: '/', default: {format: :js}

  # get '/new', to: 'roles#new', as: :new_role
  # post '/new_role', to: 'roles#create', as: :create_role
  # get '/edit_role', to: 'roles#edit', as: :edit_role
  # post '/edit_role', to: 'roles#update', as: :update_role
  # delete '/delete_role', to: 'roles#destroy', as: :delete_role
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
