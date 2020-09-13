Rails.application.routes.draw do

  get '/', to: 'home#index'
  scope "(:locale)", locale: /en|es/ do
    get '/contact', to: 'contact#contact'
    get '/about', to: 'about#about'
    get '/fruit', to: 'fruit#fruit'
    get 'vegetables/veg', to: 'vegetables#veg'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
