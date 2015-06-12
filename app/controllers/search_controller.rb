class SearchController < ApplicationController

  def schools
    search do
      Schools_data_file.where :name => params[:q]
  end
end
