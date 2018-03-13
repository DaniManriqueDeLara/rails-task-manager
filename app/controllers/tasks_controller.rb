class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :details]

  def index
    @tasks = Task.all
  end

  def details

  end


  def new
    @task = Task.new

  end

  def create
    task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id].to_i)
  end

  def update
    @task = Task.find(params[:id].to_i)
    redirect to edit_path

  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
   @task = Task.find(params[:id].to_i)
 end
end
