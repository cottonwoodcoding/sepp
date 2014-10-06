Sepp::Application.routes.draw do
  root 'home#index'

  get "/home", to: "home#index"
  get "/opportunity", to: "opportunity#index"
end
