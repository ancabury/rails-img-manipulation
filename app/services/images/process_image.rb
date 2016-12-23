module Images
  class ProcessImage
    require 'rmagick'
    # some constant Magick::GRAYColorspace

    def initialize(file_path)
      @file_path = file_path
    end

    def perform
      @image = Magick::Image::read(@file_path)[0]
      # @image.each_pixel do |pixel, col, row|
      #   puts "Pixel at: #{col}x#{row}:
      #   \tR: #{pixel.red}, G: #{pixel.green}, B: #{pixel.blue}"
      # end
      binding.pry
    end
  end
end
