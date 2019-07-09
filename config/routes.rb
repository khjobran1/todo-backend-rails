Rails.application.routes.draw do
  get 'todos' => 'todos#get_all'
  post 'addtodo' => 'todos#add_todo'
  post 'destroy' => 'todos#destroy'
  post 'complete' => 'todos#mark_complete'

end
