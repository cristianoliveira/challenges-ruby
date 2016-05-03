#!/usr/bin/env ruby

require_relative 'extractor'
require_relative 'words_path_finder'

##
# Responsible for execute the program by command line
class Runner
  def self.run(file_path, start_word, end_word)
    data = File.read(file_path)

    dictionary = Extractor.extract_dictionary(data, start_word.length)
    path_finder = WordsPathFinder.new(dictionary)
    path = path_finder.find(start_word, end_word)

    if path.empty?
      puts "There is no path between #{start_word} and #{end_word}"
    else
      puts path.join(' -> ')
    end
  rescue Errno::ENOENT => ioex
    puts ioex.message
  end

  def self.validate_args(file_path, start_word, end_word)
    unless [file_path, start_word, end_word].all?
      puts 'All args must be informed.'
      return false
    end

    unless start_word.length == end_word.length
      puts 'Two words must have the same length.'
      return false
    end

    unless File.exist?(file_path)
      puts 'File does not exists.'
      return false
    end

    true
  end
end

if __FILE__ == $PROGRAM_NAME
  if Runner.validate_args(ARGV[0], ARGV[1], ARGV[2])
    Runner.run(ARGV[0], ARGV[1], ARGV[2])
  else
    puts 'Usage runner.rb dict_file_path start_word end_word'
  end
end
