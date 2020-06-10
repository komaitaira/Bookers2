class UsersController < ApplicationController
  def index
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
    # @userはhas_manyでbookモデルと紐づいているので、
    # そのidが持っているbooksモデルの全てのデータを@booksに代入する。
  end

  def edit
  end
end
