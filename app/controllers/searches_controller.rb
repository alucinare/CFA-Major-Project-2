class SearchesController < ApplicationController
  skip_after_action :verify_authorized

  def search
    @q = ransack_params
  end

  def index
  end
end
