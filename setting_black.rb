require 'rmagick'
black = Magick::Image.read('black.jpg')[0]

puts "\nPixels initial colors\n\n"

black.each_pixel do |pixel|
    puts "Black.jpg Pixel #{pixel.__id__} before change: cmyk(#{pixel.cyan},#{pixel.magenta},#{pixel.yellow},#{pixel.black})"
end

rows = black.rows
cols = black.columns

pixels = black.get_pixels(0,0,cols,rows)

puts "\nPixels before changed\n\n"

pixels.each do |pixel|
    puts "Pixel #{pixel.__id__} before change: cmyk(#{pixel.cyan},#{pixel.magenta},#{pixel.yellow},#{pixel.black})"
end

pixels.each do |pixel|
    pixel.black = 30000
    pixel.magenta = 20000
end

puts "\nPixels changed\n\n"

pixels.each do |pixel|
    puts "Pixel #{pixel.__id__} after change: cmyk(#{pixel.cyan},#{pixel.magenta},#{pixel.yellow},#{pixel.black})"
end

black.store_pixels(0,0,cols,rows,pixels)

puts "\nPixels stored back\n\n"

black.each_pixel do |pixel|
    puts "Black.jpg Pixel #{pixel.__id__} after change: cmyk(#{pixel.cyan},#{pixel.magenta},#{pixel.yellow},#{pixel.black})"
end
