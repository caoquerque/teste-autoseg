class TasksController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  # before_action :set_todo

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :done)
  end



  # def create
  #   @task = Task.create(task_params)
  #   redirect_to @todo_list
  # end

  # private

  # def set_todo
  #   @todo_list = Todo.find(params[:todo_id])
  # end

  # def task_params
  #   params.require(:task).permit(:description, :done, :todo_id)
  # end
end
