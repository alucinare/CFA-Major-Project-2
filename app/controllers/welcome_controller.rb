class WelcomeController < ApplicationController

  skip_before_action :authenticate_user!

  def about
   @chatroom = Chatroom.new
  end
end
