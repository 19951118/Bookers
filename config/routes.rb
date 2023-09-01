Rails.application.routes.draw do
  get 'top' => 'homes#top'
  get 'books/edit'
  get 'books/index'
  get 'books/show'
end
