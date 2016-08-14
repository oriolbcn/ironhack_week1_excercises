require 'pry'

class Chunk

  attr_accessor :parts

  def initialize
    @parts = []
  end
  
  def add_part(part)
    @parts << part
  end
  
end

class SRT
  
  def initialize(file)
    @file = file
    @lines = IO.readlines(@file)
  end
  
  def parse
    @chunks = parse_chunks
    p @chunks
  end
  
  def parse_chunks
    file_lines.each_with_object([Chunk.new]) do |line, memo|
      if line.chomp.empty? # we reached a blank separator line
        memo << Chunk.new
      else
        memo.last.add_part(line)
      end
    end
  end
  
  def file_lines
    IO.readlines(@file)
  end
end

SRT.new('movie.srt').parse