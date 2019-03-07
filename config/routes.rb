Rails.application.routes.draw do
  delete "produtos/:id", to: "produtos#destroy", as: :produto
  root "produtos#index"
  get "produtos/new", to: "produtos#new" #rota para a página new
  post "produtos", to: "produtos#create" #envia os dados do novo produto para action create que envia para o banco.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
