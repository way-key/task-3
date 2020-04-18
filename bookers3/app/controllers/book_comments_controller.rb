class BookCommentsController < ApplicationController

	def create
		book = Book.find(params[:book_id])
		comment = book.book_comments.new(user_id: current_user.id)
		if comment.save
			redirect_to book_path(book)
		else
			render 'show'
		end

	end
	def delete
		comment.destroy
	end

end
