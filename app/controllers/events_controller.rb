class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @user = User.find(current_user.id)
    study_time = StudyTime.where(user_id: current_user.id)
    study_time0 = study_time.where(created_at:  Time.zone.now.all_day).sum(:time)
    study_time1 = study_time.where(created_at:  1.day.ago.all_day).sum(:time)
    study_time2 = study_time.where(created_at:  2.day.ago.all_day).sum(:time)
    study_time3 = study_time.where(created_at:  3.day.ago.all_day).sum(:time)
    study_time4 = study_time.where(created_at:  4.day.ago.all_day).sum(:time)
    study_time5 = study_time.where(created_at:  5.day.ago.all_day).sum(:time)
    study_time6 = study_time.where(created_at:  6.day.ago.all_day).sum(:time)
    # 今日の勉強時間
    @total_study_time0 = study_time0
    # 今週の勉強時間
    array = [study_time0,study_time1,study_time2,study_time3,study_time4,study_time5,study_time6]
    @week_study_time = array.sum
    # 総計勉強時間
    @all_study_time = StudyTime.where(user_id: current_user.id).sum(:time)    
    ## 勉強時間グラフ events.coffeeで使用
    gon.time0 = study_time0
    gon.time1 = study_time1
    gon.time2 = study_time2
    gon.time3 = study_time3
    gon.time4 = study_time4
    gon.time5 = study_time5
    gon.time6 = study_time6
    # カレンダー
    @events = Event.where(user_id: current_user.id)

    
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: '作成されました' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:user_id ,:title, :description, :start_date, :end_date)
    end

    def user_params
      params.require(:user).permit(:email, :image, :last_name, :first_name, :kana_last_name, :kana_first_name)
    end
end
