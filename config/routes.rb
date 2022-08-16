Rails.application.routes.draw do
  # Read all tasks
  get "tasks", to: "tasks#index"
  # Create one task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # Read one task
  get "tasks/:id", to: "tasks#show", as: :task
  # Update task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  # Delete task
  delete "tasks/:id", to: "tasks#destroy"
end
