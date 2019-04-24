class CommentsController < ApplicationController
	def create
		@post = Post.find_by params[:post_id]
		@comment = @post.comments.build(comment_params)
		@comment.save
		redirect_to post_path(@post.id)
	end

	private
		def comment_params
			params.require(:comment).permit(:content)
		end

end