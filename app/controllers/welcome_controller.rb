class WelcomeController < ApplicationController

  def home
    @lists = List.all
    @user = current_user 
  end
  
end