class PostsController < ApplicationController  
	def index
  
  end

	def new  
    @post = Post.new

	end  

	def create  
    @post=Post.create(post_params)
    @post.user = current_user
    @post.save
    redirect_to posts_path
	end  

	def post_params  
    params.require(:post).permit!
	end 

	def destroy  
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path  
	end  

	def update  
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
        redirect_to posts_path
    else
        render 'edit'
    end
	end  
	
	def edit
		@post = Post.find(params[:id])
	end
	
	def index  
  	@posts = Post.order(id: :desc).page params[:page]
   # @posts=Post.all
	end  
	
  def show  
  @post = Post.find(params[:id])
  end  

   def upvote
    @post = Post.find(params[:id])
    rating = @post.ratings.find_or_create_by(user: current_user)
    rating.value = 1
    rating.save
    redirect_to posts_path
  end

  def downvote
    @post = Post.find(params[:id])
    rating = @post.ratings.find_or_create_by(user: current_user)
    rating.value = -1
    rating.save
    redirect_to posts_path
  end
end