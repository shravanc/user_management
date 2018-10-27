Ums::Engine.routes.draw do
  resources :users do
    collection do
      post :forgot_password
      get :confirmation
      put :set_password
    end
  end
  
  resources :roles
  resources :privileges
  

  resources :sessions do
    post :update_profile
    put :change_password
  end

  resources :photos do
    get 'preview' #, on: :member
  end

end
