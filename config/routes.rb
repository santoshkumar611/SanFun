Rails.application.routes.draw do
  get 'movies',to: "content#movies"
  get 'seasons',to: "content#seasons"
  get 'library',to: "user#library"
  get 'content',to: "content#movies_seasons"
  post 'purchase_content',to: "purchase#purchase_content"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
