class UserController < ApplicationController
  def signup
    username = params[:login]
    password = params[:senha]
    em = params[:email]
  end
end
