class StaticPagesController < ApplicationController
  def home
  	@entry = current_user.entries.build if logged_in?
  	@feed_items = current_user.feed.paginate(page: params[:page]) if logged_in?
  end

  def feed
  	@feed_items = Entry.all.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end
end
