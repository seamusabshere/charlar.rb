require 'chunky_png'

module Message
  class Image
    def self.read(path)
      new(path).read
    end

    def self.write(path, content)
      new(path, content).write
    end

    attr_reader :path
    attr_reader :content
    def initialize(path, content = nil)
      @path = path
      @content = content
    end

    def write
      png = ChunkyPNG::Image.new(content.length, 1)
      x = 0
      content.each_byte do |byte|
        color = ChunkyPNG::Color.rgb(byte.ord, 0, 0)
        png[x, 0] = color
        x += 1
      end
      png.save path
    end

    def read
      png = ChunkyPNG::Image.from_file(path)
      memo = []
      png.pixels.each do |pixel|
        memo << ChunkyPNG::Color.r(pixel).chr
      end
      memo.join
    end
  end
end

