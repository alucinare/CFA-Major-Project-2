class WelcomeController < ApplicationController
  skip_after_action :verify_authorized
  skip_before_action :authenticate_user!

  def about
   @chatroom = Chatroom.new
  end
end
