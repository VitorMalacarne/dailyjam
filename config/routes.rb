Rails.application.routes.draw do

  get "/dashboard", to: "dashboard#index", as: :dashboard
  root "dashboard#index" # se quiser que o dashboard seja a página inicial

  resources :songs do
    resources :sections, shallow: true
  end

  resources :practice_sessions do
    resources :section_practices, only: [:new, :create, :edit, :update, :destroy]
    resources :recordings, only: [:new, :create, :edit, :update, :destroy]
  end

  

end
