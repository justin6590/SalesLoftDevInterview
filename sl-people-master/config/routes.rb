Rails.application.routes.draw do
  resources :people, only: :index do
    get :frequency, on: :collection
    get :possible_duplicates, on: :collection
  end
end
