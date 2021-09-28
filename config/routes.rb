Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
