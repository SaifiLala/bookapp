class TagsController < ApplicationController
  def index
    @tag = Tag.all
  end
  def show
    @tag = Tag.find(params[:id])
  end
  
    def new
        @tag = Tag.new
    end
    
    def create
        @tag = Tag.new(tag_params)
    
        if @tag.save
          redirect_to @tag
        else
          render :new, status: :unprocessable_entity
        end
    end
    
    private
    def tag_params
      params.require(:tag).permit(:name)
    end
  
    
end
