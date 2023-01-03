class WelcomeController < ApplicationController
  def index
    @posts = Post.where(status:0).order(as_type: :desc,updated_at: :desc)
  end

end
