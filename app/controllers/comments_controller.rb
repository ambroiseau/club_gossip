class CommentsController < ApplicationController
  def new
    @comment = Comment.new 
    @gossip = Gossip.find(params[:gossip_id])
  end

  def create
    @paracomm = params[:comment]
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.create(content: @paracomm[:content] )
    # @coco_id = Comment.find(params[:id])
    redirect_to gossip_comments_path(@gossip)
  end

  def show
    @gossip = Gossip.find(params[:gossip_id])

    return @comment
    @commentaire = Comment.find(id: params[:comment_id])

    #Couldn't find Comment with 'id'={:gossip_id=>"1"}
  end

  def index
    @gossip = Gossip.find(params[:gossip_id])
    @gossip
    @comment = @gossip.comments
    @comment
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :user_id)
    end

end
