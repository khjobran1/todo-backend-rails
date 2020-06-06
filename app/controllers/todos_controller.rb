class TodosController < ApplicationController

  def get_all
    render json: { data: Todo.all }, status: :ok
  end

  def add_todo
    @todo = Todo.new(title: params[:title], completed: params[:completed])
    if @todo.save
      render json: { msg:'success', data: @todo }, status: :ok
    else
      render json: { msg:'failed' }, status: :unproccessable_entity
    end
  end

  def destroy
    Todo.find(params[:id]).destroy
  end

  def mark_complete
    Todo.find(params[:id]).update(completed: params[:completed])
  end
end
