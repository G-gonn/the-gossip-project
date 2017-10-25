class GossipsController < ApplicationController


  def index
  	@gossips = Gossip.all
  end

  def create
  	@gossip = Gossip.new()
  if @gossip.save
    redirect_to @gossip
  else
    render 'new'
  end
  end
 
  def update
  	@gossip = Gossip.find(params[:id])
 
  if @gossip.update(gossip_params)
    redirect_to @gossip
  else
    render 'edit'
  end
  end

  def destroy
  	@gossip = Gossip.delete
  	redirect_to @gossip
  end

  def show
  	@gossip = Gossip.find(params[:id])
  end
end
