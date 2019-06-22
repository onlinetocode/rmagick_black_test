require 'rmagick'

black = Magick::Image.read('black.jpg')[0]
black_pixels = []
black.each_pixel do |pixel|
    black_pixels << pixel
end
puts "black.jpg Pixel 1/1: cmyk(#{black_pixels.first.cyan},#{black_pixels.first.magenta},#{black_pixels.first.yellow},#{black_pixels.first.black}),"


cyan = Magick::Image.read('cyan.jpg')[0]
cyan_pixels = []
cyan.each_pixel do |pixel|
    cyan_pixels << pixel
end
puts "cyan.jpg Pixel 1/1: cmyk(#{cyan_pixels.first.cyan},#{cyan_pixels.first.magenta},#{cyan_pixels.first.yellow},#{cyan_pixels.first.black})"
