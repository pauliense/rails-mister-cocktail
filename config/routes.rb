Rails.application.routes.draw do


  # delete 'cocktails/doses/:id', to: 'doses#destroy'

  resources :cocktails do


    resources :doses

  end



  root 'cocktails#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
