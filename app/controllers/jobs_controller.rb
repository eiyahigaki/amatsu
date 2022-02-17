class JobsController < ApplicationController
  before_action :authenticate_agency!, only: [:new, :edit, :destroy]
  before_action :holiday_string, only: [:create]
  before_action :move_to_index, only: [:edit, :destroy]

  def index
    @job = Job.includes(:agency).order('created_at DESC')
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

  def edit
    @job =  Job.find(params[:id])
  end

  def update
    @job =  Job.find(params[:id])
    if @job.update(job_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def show
    @job = Job.includes(:agency).order('created_at DESC')
    @job_show =  Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to root_path
  end

  private

  def holiday_string
    params[:job][:holiday] = params[:job][:holiday].join('/') if params[:job][:holiday].present?
  end

  def job_params
    params.require(:job).permit(:image, :status, :title, :occupation_id, :prefecture_id, :city, :house_number, :building_name,
                                :line_id, :station_id, :classification_id, :salary, :period_id, :start_time, :end_time, :description, :holiday).merge(agency_id: current_agency.id)
  end

  def move_to_index
    @job = Job.find(params[:id])
    redirect_to action: :index unless current_agency.id == @job.agency_id
  end
end
