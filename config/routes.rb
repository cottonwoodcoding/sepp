Sepp::Application.routes.draw do
  root 'home#index'

  get "/home", to: "home#index"
  get "/transition", to: "opportunity#index"
end
