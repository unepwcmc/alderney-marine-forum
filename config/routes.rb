Rails.application.routes.draw do
  post  '/enquire', to: 'email#create', as: 'enquiry'
  get   '/thank-you', to: 'email#thank_you', as: 'thank_you'

  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
