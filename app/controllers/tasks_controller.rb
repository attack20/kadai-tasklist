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
    def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = 'Task が正常に投稿されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task が投稿されませんでした'
      render :new
    end
    ef update
    @task = Task.find(params[:id])

    if @task.update(message_params)
      flash[:success] = 'Task は正常に更新されました'
      redirect_to @task
    else
      flash.now[:danger] = 'Task は更新されませんでした'
      render :edit
    end
    
    def destroy
    @task = Task.find(params[:id])
    @task.destroy

    flash[:success] = 'Task は正常に削除されました'
    redirect_to messages_url
    end
  
  def task_params
    params.require(:task).permit(:content)
  end


