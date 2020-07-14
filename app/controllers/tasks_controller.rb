class TasksController < ApplicationController
  before_action :set_todo

  def create
    @task = Task.create(task_params)
    redirect_to @todo_list
  end

  private

  def set_todo_list
    @todo_list = Todo.find(params[:todo_id])
  end

  def task_params
    params.require(:task).permit(:description, :done, :todo_id)
  end
end
