class Api::TasksController < ApplicationController
  # before_action :authenticate_user

  def index
    # @tasks = Task.all
    @tasks = current_user.tasks.order(:priority => :desc)

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
      completed: false,
      user_id: current_user.id
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
    @task.completed = ((params["input_completed"]) ? false : true)
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

  def sort
    tasks = params[:_json]
    task_length = tasks.length

    tasks.each do |task|
      real_task = Task.find_by(id: task['id'])
      real_task.priority = task_length
      real_task.save
      task_length-=1
    end 

  end
end
