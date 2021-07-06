class ProjectsController < ApplicationController
  def index
    projects = Project.all

    render json: ProjectSerializer.new(projects, options).serialized_json
  end

  def todo_update
    todo = Todo.find(params[:id]).toggle(:isCompleted)
  
      render json: TodoSerializer.new(todo).serialized_json
    end

  private

  def options
    @options ||= { include: %i[todos] }
  end
end
