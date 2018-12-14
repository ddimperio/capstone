class Api::SlacksController < ApplicationController
  def create
    task = params[:data]
    response = HTTP.post("https://hooks.slack.com/services/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", :json => {'text' => task[:task]})
    render json: task
  end
end
