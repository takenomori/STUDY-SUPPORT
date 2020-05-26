class TextbooksController < ApplicationController
  def index
    @textbooks = Textbook.where(user_id: current_user.id)
  end

  def new
    @textbook = Textbook.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
