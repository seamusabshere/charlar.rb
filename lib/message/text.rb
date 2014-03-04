module Message
  class Text
    def self.read(path)
      File.read path
    end

    def self.write(path, content)
      new(path, content).write
    end

    attr_reader :path
    attr_reader :content
    def initialize(path, content)
      @path = path
      @content = content
    end

    def write
      File.open(path, 'w') { |f| f.write content }
    end
  end
end
