class GossipsController < ApplicationController
  
  def home
  end

  def index
  end

  def show
    Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    if params[:gossip]
      gossip = params[:gossip]
    else
      gossip = params
    end
    Gossip.create(anonymous_gossiper: gossip[:anonymous_gossiper], content: gossip[:content])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
