Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plans, only: [:index, :create, :show]

  resources :members, only: [:index, :create, :update]

  get '/plans/:plan_id/members', to: 'plans#plan_members'
end
