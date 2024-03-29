class RankingController < ApplicationController
  def index
    @ranking_list = UserStatus.all.where.not(id: 100).order(score: :desc)
  end

  def update
    ScoreUpdateJob.perfoem_later
  end
end