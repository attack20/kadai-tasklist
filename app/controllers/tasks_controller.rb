class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
     @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
    def new
      @task = Task.new
    end
    def edit
    @task = Task.find(params[:id])
    end
end


