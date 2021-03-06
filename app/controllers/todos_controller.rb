class TodosController < ApplicationController
  before_action :set_todo, only: [ :show, :edit, :update, :destroy ]

  # def index
  #   @todos= Todo.all
  # end

  # def show
  #   @todo = Todo.find(params[:id])
  # end

  # def new
  #   @todo = Todo.new 
  # end

  # def edit
  #   @todo = Todo.find(params[:id])
  # end

  # def update
  #   @todo = Todo.find(params[:id])
  #   @todo.update(params[:todo])
  # end
  







  def index
    @todos = Todo.all
  end

  def show
    @tasks = @todo.tasks
    @task = Task.new
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id
    @todo.save
    redirect_to todos_path
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    redirect_to todo_path(@todo)
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:public, :user_id, :description)
  end
end