class TodosController < ApplicationController
  def create
    todo = Todo.new(todo_params)

    if todo.save
      render json: TodoSerializer.new(todo).serialized_json
    else
      render json: { error: todo.errors.messages }, status: 422
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end