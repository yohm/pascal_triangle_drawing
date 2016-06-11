require 'pp'
require 'chunky_png'
require 'json'

class PascalTriangle

  def self.generate(l, mod=nil)
    result = []
    current = []
    l.times do |row|
      n = current.size
      n.times do |i|
        current[i] = current[i] + current[i+1].to_i
      end
      current.unshift(1)
      if mod
        result << current.map {|x| x % mod }
      else
        result << current.dup
      end
    end
    result
  end
end

def draw_image(pngfile, image, num_colors, s = 5)
  size_x = image.last.size * s
  size_y = image.size * s

  png = ChunkyPNG::Image.new(size_x, size_y, ChunkyPNG::Color.from_hex('#FFFFFF'))
  num_to_color = {}
  num_colors.times do |n|
    next if n == 0
    num_to_color[n] =  ChunkyPNG::Color.from_hsl(360.0*(n-1)/num_colors, 0.8, 0.5, 180)
  end

  image.each_with_index do |row,row_idx|
    row.each_with_index do |cell,col_idx|
      next if cell == 0
      color = num_to_color[ cell ]
      png.rect( col_idx*s, row_idx*s, (col_idx+1)*s, (row_idx+1)*s, color, color)
    end
  end
  png.save( pngfile )
end

unless ARGV.size == 2 or ARGV.size == 3
  $stderr.puts "usage: ruby #{__FILE__} <l> <mod> [pixel_per_box]"
  raise "invalid argument"
end

l = ARGV[0].to_i
mod = ARGV[1].to_i
pixel = (ARGV[2] || 5).to_i

image = PascalTriangle.generate(l, mod)
draw_image('pascal_triangle.png', image, mod, pixel)

