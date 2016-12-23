class ImageController < ApplicationController
  def index
  end

  def create
    Images::ProcessImage.new(image_params.path).perform
    render :index
  end

  private

  def image_params
    params.require(:file)
  end
end
