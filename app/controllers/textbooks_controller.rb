class TextbooksController < ApplicationController
  def index
    @textbooks = Textbook.where(user_id: current_user.id).page(params[:page]).per(9)
  end

  def new
    @textbook = Textbook.new
  end

  def create
    @textbook = Textbook.new(textbook_params)
    @textbook.user_id = current_user.id
    if @textbook.save
      redirect_to textbook_path(current_user.id), success: '作成されました'
    else
      @textbook = Textbook.new
      render action: :new, danger: '作成に失敗しました'
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
      redirect_to textbook_path(@textbook.id), success: '更新されました'
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
    params.require(:textbook).permit(:user_id, :tag_id, :title, :book_image, :status, :note)
  end

  def tag_params
    params.require(:textbook_tag).permit(:title)
  end

  def user_params
    params.require(:user).permit(:email, :image, :last_name, :first_name, :kana_last_name, :kana_first_name)
  end
end
