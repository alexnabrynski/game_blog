Rails.application.routes.draw do
  
  resources :reviews
  
  root 'home#index'

 
end

# Prefix Verb   URI Pattern                 Controller#Action
#     reviews GET    /reviews(.:format)          reviews#index
#             POST   /reviews(.:format)          reviews#create
#  new_review GET    /reviews/new(.:format)      reviews#new
# edit_review GET    /reviews/:id/edit(.:format) reviews#edit
#      review GET    /reviews/:id(.:format)      reviews#show
#             PATCH  /reviews/:id(.:format)      reviews#update
#             PUT    /reviews/:id(.:format)      reviews#update
#             DELETE /reviews/:id(.:format)      reviews#destroy
#        root GET    /