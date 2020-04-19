class BookCommentsController < ApplicationController

	def create
		book = Book.find(params[:book_id])
		comment = book.book_comments.new(book_comment_params)
		# byebug
		comment.user_id = current_user.id
		if comment.save
			redirect_to book_path(book)
		else
			redirect_to book_path(book)
		end
	end

	def destroy
		BookComment.find(params[:book_id]).destroy
		redirect_back(fallback_location: root_path)
	end

	private

	def book_comment_params
		params.require(:book_comment).permit(:comment)
	end

end
