class BookCommentsController < ApplicationController

	def create
		@book = Book.find(params[:id])
		@book_comment = BookComment.new
	end
	def delete
		@book_comment = Book.find(params[:id])
		book.destroy
	end

end
