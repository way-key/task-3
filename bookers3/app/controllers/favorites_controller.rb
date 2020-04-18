class FavoritesController < ApplicationController

def create
	book = Book.find(params[:book_id])
	favorite = book.favorites.new(user_id: current_user.id)
	favorite.save
	redirect_back(fallback_location: root_path)
	# リダイレクト先を元の場所に戻すように修正
end

def destroy
	book = Book.find(params[:book_id])
	favorite = book.favorites.find_by(user_id: current_user.id)
	favorite.destroy
	redirect_back(fallback_location: root_path)
	# リダイレクト先を元の場所に戻すように修正
end

end
