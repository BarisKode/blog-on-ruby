class LandingController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC').paginate(page: params[:page], per_page: 10)
  end

end