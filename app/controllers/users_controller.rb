class UsersController < ApplicationController
  def index
    @tasks = Task.all
  end
end
