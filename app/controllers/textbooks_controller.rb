class TextbooksController < ApplicationController
  def index
    @textbooks = Textbook.where(user_id: current_user.id)
  end

  def new
    @textbook = Textbook.new
  end

  def create
    @textbook = Textbook.new(textbook_params)
    @textbook.user_id = current_user.id
    if @textbook.save
      redirect_to textbooks_path(current_user.id), success: "登録されました"
    else
      @textbook = Textbook.new
      render action: :new, danger: '登録に失敗しました'
    end
  end

  def show
    @textbook = Textbook.find(params[:id])
  end

  def edit
    @textbook = Textbook.find(params[:id])
  end

  def update
    @textbook = Textbook.find(params[:id])
    if @textbook.update(textbook_params)
      redirect_to textbook_path(@textbook.id), success: "更新されました"
    else
      render action: :edit, danger: '更新に失敗しました'
    end
  end

  def destroy
    @textbook = Textbook.find(params[:id])
    @textbook.destroy
    redirect_to textbooks_url
  end

  private

  def textbook_params
    params.require(:textbook).permit(:user_id, :textbook_tag_id, :title, :status, :note)
  end

end
