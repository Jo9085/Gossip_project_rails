class StaticPagesController < ApplicationController
  def home
    @gossips = Gossip.all
  end

  def team
  end

  def contact
  end

  def gossip
    @real_gossip = Gossip.find(params[:id])
  end

  def author
    @real_author = User.find(params[:id])
  end
end
