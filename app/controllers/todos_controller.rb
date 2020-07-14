class TodosController < ApplicationController

  def index
    @todo_lists = Todo.all
  end
end
