Rails.application.routes.draw do
  resources :projects, :todos
  
  patch '/projects/:id/todo/:id', to: 'projects#todo_update'
end
