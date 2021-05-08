class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:schedule_name, :start_date, :end_date, :allday, :schedule_memo))
    if @schedule.save
      flash[:notice] = "新しく予定を登録しました"
      redirect_to :schedules
    else
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:schedule_name, :start_date, :end_date, :allday, :schedule_memo))
      flash[:notice] = "予定を更新しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定を削除しました"
    redirect_to schedules_path
  end

end
