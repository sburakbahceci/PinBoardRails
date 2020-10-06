Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :pins do
  	member do
      put "like",to: "pins#upvote"
  	end
  end

  root "pins#index"
end