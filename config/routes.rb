Rails.application.routes.draw do
  get 'fruit/fruit'
  scope "(:locale)", locale: /en|es/ do
    root 'home#index'
    get '/contact', to: 'contact#contact'
    get '/about', to: 'about#about'
    get '/fruit', to: 'fruit#fruit'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
