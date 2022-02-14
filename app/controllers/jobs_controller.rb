class JobsController < ApplicationController
  before_action :authenticate_agency!, only: [:new]
  before_action :holiday_string, only: [:create]

  def index
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
      if @job.save
        redirect_to root_path
      else
        render :new
      end
  end

  private
  def holiday_string
    if params[:job][:holiday].present?
      params[:job][:holiday] = params[:job][:holiday].join("/")
    end
  end

  def job_params
    params.require(:job).permit(:image, :status, :title, :occupation_id, :prefecture_id, :city, :house_number, :building_name, :line_id, :station_id, :classification_id, :salary, :period_id, :start_time, :end_time, :description, :holiday).merge(agency_id: current_agency.id)
  end
end
