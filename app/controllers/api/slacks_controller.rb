class Api::SlacksController < ApplicationController
  def create
    task = params[:data]
    final_text = "#{task[:task]} (Notes: #{task[:notes]})"
    response = HTTP.post("https://hooks.slack.com/services/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", :json => {'text' => final_text})
    render json: task
  end
end
