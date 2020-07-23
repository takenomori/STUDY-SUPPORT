class HomeController < ApplicationController
  def front
    @user = User.all.order(experience_point: :DESC).first(10)

    # ## レベルアップシステム
    # user = User.all
    # user.experience_point = StudyTime.where(user_id: current_user.id).sum(:time)
    # user.update(experience_point: user.experience_point)
    # # 経験値を更新

    # levelSetting = LevelSetting.find_by(level: user.level + 1)
    # # levelsettingモデルから、自分のレベルより1高いレコードを探す

    # if levelSetting.thresold <= user.experience_point
    #   # 探してきたレコードの閾値よりもユーザーの総経験値が高かった場合
    #   user.level = user.level + 1
    #   user.update(level: user.level)
    #   # レベルを1増やして更新
    # end
    # ##

  end

end