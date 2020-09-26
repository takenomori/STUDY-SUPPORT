class HomeController < ApplicationController
  def front
    @user = User.all.order(experience_point: :DESC).first(10)
  end
end