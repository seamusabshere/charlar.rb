require 'fileutils'

require_relative 'message/text'

module Message
  def self.write(path, content)
    case File.extname(path)
    when '.txt'
      Text.write(path, content)
    else
      raise "don't know how to write #{path}"
    end
  end

  def self.read(path)
    content = case File.extname(path)
    when '.txt'
      Text.read(path)
    else
      raise "don't know how to read #{path}"
    end
    FileUtils.mv path, 'trash'
    content
  end
end
