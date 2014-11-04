Rails.application.routes.draw do
  
 root 'home#index'
  
  devise_for :users
  resources :reviews do
      resources :comments
    end
  
 

 
end

#                   Prefix Verb   URI Pattern                                     Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                       devise/sessions#destroy
#            user_password POST   /users/password(.:format)                       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                  devise/passwords#edit
#                          PATCH  /users/password(.:format)                       devise/passwords#update
#                          PUT    /users/password(.:format)                       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                         devise/registrations#cancel
#        user_registration POST   /users(.:format)                                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                           devise/registrations#edit
#                          PATCH  /users(.:format)                                devise/registrations#update
#                          PUT    /users(.:format)                                devise/registrations#update
#                          DELETE /users(.:format)                                devise/registrations#destroy
#          review_comments GET    /reviews/:review_id/comments(.:format)          comments#index
#                          POST   /reviews/:review_id/comments(.:format)          comments#create
#       new_review_comment GET    /reviews/:review_id/comments/new(.:format)      comments#new
#      edit_review_comment GET    /reviews/:review_id/comments/:id/edit(.:format) comments#edit
#           review_comment GET    /reviews/:review_id/comments/:id(.:format)      comments#show
#                          PATCH  /reviews/:review_id/comments/:id(.:format)      comments#update
#                          PUT    /reviews/:review_id/comments/:id(.:format)      comments#update
#                          DELETE /reviews/:review_id/comments/:id(.:format)      comments#destroy
#                  reviews GET    /reviews(.:format)                              reviews#index
#                          POST   /reviews(.:format)                              reviews#create
#               new_review GET    /reviews/new(.:format)                          reviews#new
#              edit_review GET    /reviews/:id/edit(.:format)                     reviews#edit
#                   review GET    /reviews/:id(.:format)                          reviews#show
#                          PATCH  /reviews/:id(.:format)                          reviews#update
#                          PUT    /reviews/:id(.:format)                          reviews#update
#                          DELETE /reviews/:id(.:format)                          reviews#destroy
#                     root GET    /                                               home#index