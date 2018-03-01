Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [ :new, :create, :show]
  end
  resources :doses, only: [:destroy] #lo ponemos aqui por qeu no necesitamos el id de cocktail para eliminar una dose la ruta seria solo dose/id
end
