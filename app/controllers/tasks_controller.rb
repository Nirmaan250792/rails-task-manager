class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
    # render :index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def show

  end

  def edit

  end

  def update
    @task.update(params[:task])
    redirect_to tasks_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path(@task)
  end


  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
