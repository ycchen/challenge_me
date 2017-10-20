Rails.application.routes.draw do
  resources :tasks
  resources :task_schedules
  resources :users

  root to: 'users#index'
  get 'task_complete' => 'tasks#complete'
end
