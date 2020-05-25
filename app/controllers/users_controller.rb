class UsersController < ApplicationController
  def index
  end

  def show
    @book = Book.new
    @user = current_user
  end

  def edit
  end
end
