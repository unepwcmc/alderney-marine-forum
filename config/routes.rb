Rails.application.routes.draw do
  post '/enquire', to: 'email_controller#create', as: 'enquiry'

  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
