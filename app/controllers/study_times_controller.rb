class StudyTimesController < ApplicationController
  def index
    @study_times = StudyTime.where(user_id: current_user.id).page(params[:page]).per(5)
  end

  def new
    @study_time = StudyTime.new
  end

  def create
    @study_time = StudyTime.new(study_time_params)
    @study_time.user_id = current_user.id
    if @study_time.save
      redirect_to study_times_path(current_user.id)
    else
      @study_time = StudyTime.new
      @study_time.user_id = current_user.id
      render action: :new, danger: '登録に失敗しました'
    end
  end

  def show
    @study_time = StudyTime.find(params[:id])
  end

  def edit
    @study_time = StudyTime.find(params[:id])
  end

  def update
    @study_time = StudyTime.find(params[:id])
    if @study_time.update(study_time_params)
      redirect_to study_time_path(@study_time.id)
    else
      render action: :edit, danger: '更新に失敗しました'
    end
  end

  def destroy
    @study_time = StudyTime.find(params[:id])
    @study_time.destroy
    redirect_to study_times_path
  end

  private

  def study_time_params
    params.require(:study_time).permit(:user_id, :day, :time, :genre, :comment)
  end
end
