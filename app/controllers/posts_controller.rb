class PostsController < ApplicationController
  def new
  end

  def create
    head = params[:post][:head]
    body = params[:post][:body].strip
    if head.blank?
      flash.notice = "标题不能为空"
    elsif body.length < 8
      flash.notice = "内容长度不能少于8个字"
    else
      post = Post.new(account_id: 1,as_type:0,status:0)
      post.head = head
      post.body = body
      boolean = post.save
      if boolean
        flash.notice = "发布成功"
        redirect_to :root
      else
        flash.notice = "发布失败，请重新发布"
        render "/posts/new"
      end
    end
  end

end
