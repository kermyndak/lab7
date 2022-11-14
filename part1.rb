# frozen_string_literal: true

# This is class for solution part1 in lab7
class FirstPart
  def self.generate_file(text, path)
    return 'File-Path-Error' unless path.match?(/^\.?[a-zA-Z]+\.[a-zA-Z]+$/)

    File.open(path, 'w') { |file| text.split('\n').each { |line| file << "#{line}\n" } }
  end

  def self.copy_file(path_destination, path_source)
    return 'File-Path-Error' unless path_destination.match?(/^\.?[a-zA-Z]+\.[a-zA-Z]+$/)

    File.open(path_destination, 'w') do |file|
      File.open(path_source) do |sf|
        sf.each_line { |line| file << "#{line.gsub(/[eErtU]/, '').reverse}\n"[1..] }
      end
    end
  end

  def self.show_file(path)
    return 'File-Path-Error' unless path.match?(/^\.?[a-zA-Z]+\.[a-zA-Z]+$/)

    File.readlines(path).map(&:chomp)
  end
end
