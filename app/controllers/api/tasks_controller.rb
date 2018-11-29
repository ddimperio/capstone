class Api::TasksController < ApplicationController
  # before_action :authenticate_user

  def index
    @tasks = Task.all
    # @tasks = current_user.tasks

    render "index.json.jbuilder"
  end

  def show 
    input_id = params["id"]
    @task = Task.find_by(id: params[:id])

    render "show.json.jbuilder"
  end

  def create
    @task = Task.new(
      task: params["input_task"],
      notes: params["input_notes"],
      priority: params["input_priority"],
      completed: params["input_completed"],
      user_id: params["input_userid"]
      )
    if @task.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @task.errors.full_messages}, status: :inprocessable_entity
    end
  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.task = params["input_task"] || @task.task
    @task.notes = params["input_notes"] || @task.notes
    @task.priority = params["input_priority"] || @task.priority
    @task.completed = params["input_completed"] || @task.completed
    if @task.save
      render "show.json.jbuilder"
    else 
      render json: {errors: @task.errors.full_messages}, status: :inprocessable_entity
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy
    render json: {message: "Task has been deleted"}
  end
end
